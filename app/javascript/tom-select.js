const selectInput = document.querySelector('#product_categories');
const tomSelect = new TomSelect(selectInput, {
    // Options object
    placeholder: 'Select items...', // Placeholder text
    create: true, // Allow users to create new options
    // More options...
});
