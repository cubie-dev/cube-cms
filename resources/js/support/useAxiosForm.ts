import axios, {
    AxiosError,
    AxiosRequestConfig,
    AxiosResponse,
    Method
} from 'axios';
import { useCallback, useMemo, useState } from 'react';
import { router } from '@inertiajs/react';

type Errors<T> = {
    [key in keyof T]: string[];
};

interface ErrorResponse<T> {
    message: string;
    errors: Errors<T>;
}

interface RequestConfig<R> {
    onSuccess?: (data: R, response: AxiosResponse<R>) => void;
    onError?: (error: AxiosError<ErrorResponse<R>>) => void;
}

export const useAxiosForm = <T>(data: T, axiosConfig?: AxiosRequestConfig) => {
    const [errors, setErrors] = useState<Partial<Record<keyof T, string[]>>>({});
    const [sentData, setSentData] = useState<T>(data);
    const initialData = useMemo<T>(() => data, []);

    const handleSuccessResponse = useCallback(<R>(
        response: AxiosResponse<R>,
        config?: RequestConfig<R>
    ) => {
        setErrors({});
        config?.onSuccess?.(response.data, response);
    }, [setErrors]);

    const handleErrorResponse = useCallback(<R>(
        error: AxiosError<any>,
        config?: RequestConfig<R>
    ) => {
        if (error.response?.status === 401 || error.response?.status === 419) {
            // When a token mismatches or the user is not authenticated,
            // try to reload the page without any props, to see whether
            // the user is still logged in or not, so a redirect will
            // happen
            router.reload({ only: [] });
        }

        if (error.response?.status === 422) {
            setErrors(error.response.data.errors);
        }

        config?.onError?.(error);
    }, [setErrors]);

    const submit = useCallback(<R>(method: Method, url: string, config?: RequestConfig<R>) => {
        axios.request<R>({
            ...axiosConfig,
            data: sentData,
            url,
            method
        })
            .then((response: AxiosResponse<R>) => {
                handleSuccessResponse<R>(response, config);
            })
            .catch((error: AxiosError<any>) => {
                handleErrorResponse<R>(error, config);
            });
    }, [sentData, axiosConfig]);

    return {
        data: sentData,
        errors,
        setData<K extends keyof T>(key: K, value: T[K]) {
            setSentData((prev: T) => ({
                ...prev,
                [key]: value
            }));
        },
        clearErrors() {
            setErrors({});
        },
        post<R>(url: string, config?: RequestConfig<R>) {
            submit<R>('post', url, config);
        },
        get<R>(url: string, config?: RequestConfig<R>) {
            submit('get', url, config);
        },
        put<R>(url: string, config?: RequestConfig<R>) {
            submit('put', url, config);
        },
        patch<R>(url: string, config?: RequestConfig<R>) {
            submit('patch', url, config);
        },
        delete<R>(url: string, config?: RequestConfig<R>) {
            submit('delete', url, config);
        },
        reset(...fields: Array<keyof T>) {
            setSentData((prev: T) => {
                const next = prev;

                fields.forEach((field) => {
                    next[field] = initialData[field];
                });

                return next;
            });
        }
    };
};
