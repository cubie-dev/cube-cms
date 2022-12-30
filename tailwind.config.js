module.exports = {
    content: [
        "./resources/**/*.tsx",
    ],
    safelist: [
        'sm:grid-cols-2',
        'sm:grid-cols-3',
        'sm:grid-cols-6',
        'grid-cols-1',
        'grid-cols-2',
        'grid-cols-4',
        'grid-cols-6',
        'md:grid-cols-4',
        'gap-8',
        'col-span-5'
    ],
    theme: {
        extend: {
            container: {
                screens: {
                    sm: '',
                    md: '720px',
                    lg: '960px',
                    xl: '1140px'
                },
                padding: '1rem'
            },
        },
    },
    plugins: [],
}
