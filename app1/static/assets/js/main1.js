
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

// select all or multiple

const addPermissionButton = document.getElementById('addPermission');
const removePermissionButton = document.getElementById('removePermission');
const availablePermissionsSelect = document.getElementById('availablePermissions');
const selectedPermissionsSelect = document.getElementById('selectedPermissions');
const selectAllAvailablePermissionsButton = document.getElementById('selectAllAvailablePermissions');

addPermissionButton.addEventListener('click', function() {
    moveOptions(availablePermissionsSelect, selectedPermissionsSelect);
});

removePermissionButton.addEventListener('click', function() {
    moveOptions(selectedPermissionsSelect, availablePermissionsSelect);
});

selectAllAvailablePermissionsButton.addEventListener('click', function() {
    selectAllOptions(availablePermissionsSelect);
    moveOptions(availablePermissionsSelect, selectedPermissionsSelect);
});

function moveOptions(sourceSelect, targetSelect) {
    const selectedOptions = Array.from(sourceSelect.selectedOptions);
    selectedOptions.forEach(option => {
        const newOption = document.createElement('option');
        newOption.value = option.value;
        newOption.textContent = option.textContent;
        targetSelect.appendChild(newOption);
        option.remove();
    });
}

function selectAllOptions(selectElement) {
    Array.from(selectElement.options).forEach(option => option.selected = true);
}
function moveOptions(sourceSelect, targetSelect) {
    const selectedOptions = Array.from(sourceSelect.selectedOptions);
    selectedOptions.forEach(option => {
        const newOption = document.createElement('option');
        newOption.value = option.value;
        newOption.textContent = option.textContent;
        targetSelect.appendChild(newOption);
        option.remove();
    });
}

function selectAllOptions(selectElement) {
    Array.from(selectElement.options).forEach(option => option.selected = true);
}

// Groups

const addGroupButton = document.getElementById('addGroup');
const removeGroupButton = document.getElementById('removeGroup');
const availableGroupsSelect = document.getElementById('availableGroups');
const selectedGroupSelect = document.getElementById('selectedGroups');
const selectAllAvailableGroupsButton = document.getElementById('selectAllAvailableGroups');

addGroupButton.addEventListener('click', function() {
    moveOptions(availableGroupsSelect, selectedGroupSelect);
});

removeGroupButton.addEventListener('click', function() {
    moveOptions(selectedGroupSelect, availableGroupsSelect);
});

selectAllAvailableGroupsButton.addEventListener('click', function() {
    selectAllOptions(availableGroupsSelect);
    moveOptions(availableGroupsSelect, selectedGroupSelect);
});

function moveOptions(sourceSelect, targetSelect) {
    const selectedOptions = Array.from(sourceSelect.selectedOptions);
    selectedOptions.forEach(option => {
        const newOption = document.createElement('option');
        newOption.value = option.value;
        newOption.textContent = option.textContent;
        targetSelect.appendChild(newOption);
        option.remove();
    });
}

function selectAllOptions(selectElement) {
    Array.from(selectElement.options).forEach(option => option.selected = true);
}

// profile drowdown

document.addEventListener("click", function(event) {
    var dropdownToggle = document.querySelector(".dropdown-toggle");
    var dropdownContent = document.querySelector(".dropdown-content");

    if (event.target === dropdownToggle) {
        dropdownContent.style.display = (dropdownContent.style.display === "block") ? "none" : "block";
    } else {
        dropdownContent.style.display = "none";
    }
});


function toggleDropdown() {
    var dropdown = document.getElementById("myDropdown");
    if (dropdown.style.display === "block") {
        dropdown.style.display = "none";
    } else {
        dropdown.style.display = "block";
        // Add an event listener to the document to close the dropdown when clicked outside of it
        document.addEventListener('click', closeDropdownOutside);
    }
}

function closeDropdownOutside(event) {
    var dropdown = document.getElementById("myDropdown");
    // Check if the clicked element is inside the dropdown or the button itself
    if (!dropdown.contains(event.target) && !document.querySelector('.dropbtn').contains(event.target)) {
        dropdown.style.display = "none";
        // Remove the event listener after the dropdown is closed
        document.removeEventListener('click', closeDropdownOutside);
    }
}


