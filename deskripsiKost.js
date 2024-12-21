// Mengatur menu hamburger
const hamMenu = document.getElementById('hamburger');
const offScreenMenu = document.getElementById('offScreenMenu');


hamMenu.addEventListener('click', () => {
    hamMenu.classList.toggle('active');
    offScreenMenu.classList.toggle('active');
});

// Slider logika
const slides = document.querySelectorAll(".slides img");
let slideIndex = 0;
let intervalId = null;

document.addEventListener("DOMContentLoaded", initializeSlider);
function initializeSlider() {
    const slides = document.querySelectorAll(".slides .slide"); // Mengambil semua elemen gambar di slider
    let slideIndex = 0;
    let intervalId = null;

    if (slides.length > 0) {
        slides[0].classList.add("displaySlide"); // Tampilkan slide pertama

        intervalId = setInterval(() => {
            slides[slideIndex].classList.remove("displaySlide"); // Sembunyikan slide saat ini
            slideIndex = (slideIndex + 1) % slides.length; // Lanjutkan ke slide berikutnya
            slides[slideIndex].classList.add("displaySlide"); // Tampilkan slide baru
        }, 5000);
    }

    document.querySelector('.prev').addEventListener('click', () => {
        clearInterval(intervalId);
        slides[slideIndex].classList.remove("displaySlide");
        slideIndex = (slideIndex - 1 + slides.length) % slides.length; // Sebelumnya
        slides[slideIndex].classList.add("displaySlide");
        intervalId = setInterval(nextSlide, 5000);
    });

    document.querySelector('.next').addEventListener('click', () => {
        clearInterval(intervalId);
        slides[slideIndex].classList.remove("displaySlide");
        slideIndex = (slideIndex + 1) % slides.length; // Berikutnya
        slides[slideIndex].classList.add("displaySlide");
        intervalId = setInterval(nextSlide, 5000);
    });
}

function showSlide(index) {
    if (index >= slides.length) {
        slideIndex = 0;
    } else if (index < 0) {
        slideIndex = slides.length - 1;
    } else {
        slideIndex = index;
    }

    slides.forEach((slide, i) => {
        slide.classList.toggle("displaySlide", i === slideIndex);
    });
}

function prevSlide() {
    clearInterval(intervalId); // Hentikan interval saat berpindah manual
    showSlide(slideIndex - 1); // Pindah ke slide sebelumnya
    intervalId = setInterval(nextSlide, 5000); // Mulai interval lagi
}

function nextSlide() {
    clearInterval(intervalId); // Hentikan interval saat berpindah manual
    showSlide(slideIndex + 1); // Pindah ke slide berikutnya
    intervalId = setInterval(nextSlide, 5000); // Mulai interval lagi
}

// Event Listener untuk tombol manual (opsional jika tombol tersedia)
const prevButton = document.querySelector('.prevSlideButton'); // Pastikan ada elemen tombol di HTML
const nextButton = document.querySelector('.nextSlideButton');

if (prevButton && nextButton) {
    prevButton.addEventListener('click', prevSlide);
    nextButton.addEventListener('click', nextSlide);
}
