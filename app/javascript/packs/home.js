document.addEventListener('turbolinks:load', function() {
    const menuToggle = document.getElementById('menuToggle');
    const menu = document.getElementById('menu');
    const editDotToggles = document.querySelectorAll('.editDotToggle');
    

    menuToggle.addEventListener('click', function() {
        menu.style.display = (menu.style.display === 'none' || menu.style.display === '') ? 'block' : 'none';
    });

    document.addEventListener('click', (e) => {
        if (!e.target.closest('#menuToggle')) {
            menu.style.display = 'none';
        }
    });

    editDotToggles.forEach(function(editDotToggle) {
        const reservationId = editDotToggle.dataset.reservationId;
        const roomId = editDotToggle.dataset.roomId;
        const editDotReservation = document.getElementById(`editDotReservation${reservationId}`);
        const editDotRoom = document.getElementById(`editDotRoom${roomId}`);

        editDotToggle.addEventListener('click', function() {
            editDotReservation.style.display = (editDotReservation.style.display === 'none' || editDotReservation.style.display === '') ? 'block' : 'none';
        });

        document.addEventListener('click', (e) => {
            if (!e.target.closest(`.editDotToggle[data-reservation-id="${reservationId}"]`)) {
                editDotReservation.style.display = 'none';
            }
        });

        editDotToggle.addEventListener('click', function() {
            editDotRoom.style.display = (editDotRoom.style.display === 'none' || editDotRoom.style.display === '') ? 'block' : 'none';
        });

        document.addEventListener('click', (e) => {
            if (!e.target.closest(`.editDotToggle[data-room-id="${roomId}"]`)) {
                editDotRoom.style.display = 'none';
            }
        });
    });
});
