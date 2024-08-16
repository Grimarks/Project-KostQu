
const hamMenu = document.getElementById('hamburger');
const offScreenMenu = document.getElementById('offScreenMenu');

hamMenu.addEventListener('click', () => {
    hamMenu.classList.toggle('active');
    offScreenMenu.classList.toggle('active');
});

const slides = document.querySelectorAll(".slides img");
let slideIndex = 0;
let intervalId = null;

document.addEventListener("DOMContentLoaded", initializeSlider);

function initializeSlider(){
    if(slides.length > 0){
        slides[slideIndex].classList.add("displaySlide");
        intervalId = setInterval(nextSlide, 5000);
    }
}

function showSlide(index){
    if(index >= slides.length){
        slideIndex = 0;
    }
    else if(index < 0){
        slideIndex = slides.length - 1;
    }

    slides.forEach(slide => {
        slide.classList.remove("displaySlide");
    });
    slides[slideIndex].classList.add("displaySlide");
}

function prevSlide(){
    clearInterval(intervalId);
    slideIndex--;
    showSlide(slideIndex);
}

function nextSlide(){
    slideIndex++;
    showSlide(slideIndex);
}

const stayDuration = document.getElementById('stayDuration');
const roomType = document.getElementById('roomType');
const totalPriceElement = document.getElementById('totalPrice');

const prices = {
    AC: {
        '1day': 100000,
        '1month': 2500000,
        '1year': 25000000
    },
    NonAC: {
        '1day': 75000,
        '1month': 2000000,
        '1year': 20000000
    }
};

function calculatePrice() {
    const selectedDuration = stayDuration.value;
    const selectedRoomType = roomType.value;

    const price = prices[selectedRoomType][selectedDuration];
    totalPriceElement.textContent = price.toLocaleString('id-ID');
}

stayDuration.addEventListener('change', calculatePrice);
roomType.addEventListener('change', calculatePrice);

calculatePrice();
