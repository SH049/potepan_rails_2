document.addEventListener('turbolinks:load', function() {
    const menuToggle = document.getElementById('menuToggle');
    const menu = document.getElementById('menu');

    menuToggle.addEventListener('click', function() {
        menu.style.display = (menu.style.display === 'none' || menu.style.display === '') ? 'block' : 'none';
    });

    document.addEventListener('click', (e) => {
        if (!e.target.closest('#menuToggle')) {
            menu.style.display = 'none';
        }
    });
});
