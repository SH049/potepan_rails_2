document.addEventListener('turbolinks:load', function() {
    const menuToggle = document.getElementById('menuToggle');
    const menu = document.getElementById('menu');
    const editDotToggle = document.getElementById('editDotToggle');
    const editDot = document.getElementById('editDot');

    menuToggle.addEventListener('click', function() {
        menu.style.display = (menu.style.display === 'none' || menu.style.display === '') ? 'block' : 'none';
    });

    document.addEventListener('click', (e) => {
        if (!e.target.closest('#menuToggle')) {
            menu.style.display = 'none';
        }
    });

    editDotToggle.addEventListener('click', function() {
        editDot.style.display = (editDot.style.display === 'none' || editDot.style.display === '') ? 'block' : 'none';
    });

    document.addEventListener('click', (e) => {
        if (!e.target.closest('#editDotToggle')) {
            editDot.style.display = 'none';
        }
    });
});
