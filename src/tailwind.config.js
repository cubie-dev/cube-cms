module.exports = {
    content: [
        "./resources/**/*.tsx",
    ],
    safelist: [
        'sm:grid-cols-3',
        'grid-cols-1',
        'grid-cols-4',
        'md:grid-cols-4',
        'gap-8'
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
