document.addEventListener("DOMContentLoaded", function() {
    const tableHeader = document.getElementById("tableHeader");
    tableHeader.addEventListener("click", function() {
        window.location.href = "details.html";
    });
});
document.addEventListener("DOMContentLoaded", function() {
    const table = document.getElementById("detailsinputs");
    table.addEventListener("click", function() {
        window.location.href = "index.html"; 
    });
});
//show or hide sidebar

    document.getElementById('menu-btn').addEventListener('click', function() {
        document.querySelector('aside').classList.toggle('active');
    });

    document.getElementById('close-btn').addEventListener('click', function() {
        document.querySelector('aside').classList.remove('active');
    });



const menuBtn=document.querySelector('#menu-btn');
const closeBtn=document.querySelector('#close-btn');
const sidebar=document.querySelector('#aside');

menuBtn.addEventListener('click', () => {
    sidebar.style.display = 'block';
})

closeBtn.addEventListener('click', () => {
    sidebar.style.display = 'none';
})

//change theme
const themeBtn = document.querySelector('.theme-btn');

// Check if there's a theme preference saved in localStorage
const savedTheme = localStorage.getItem('theme');

// If there's a saved theme, apply it
if (savedTheme) {
    document.body.classList.add(savedTheme);
    // Update the active state of the theme button
    if (savedTheme === 'dark-theme') {
        themeBtn.querySelector('span:first-child').classList.add('active');
        themeBtn.querySelector('span:last-child').classList.remove('active');
    } else {
        themeBtn.querySelector('span:first-child').classList.remove('active');
        themeBtn.querySelector('span:last-child').classList.add('active');
    }
}

themeBtn.addEventListener('click', () => {
    // Toggle between dark and light theme
    document.body.classList.toggle('dark-theme');

    // Update the active state of the theme button
    themeBtn.querySelector('span:first-child').classList.toggle('active');
    themeBtn.querySelector('span:last-child').classList.toggle('active');

    // Save the theme preference in localStorage
    const currentTheme = document.body.classList.contains('dark-theme') ? 'dark-theme' : '';
    localStorage.setItem('theme', currentTheme);
});


