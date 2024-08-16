// app/assets/javascripts/colors.js

document.addEventListener("DOMContentLoaded", function() {
    const colorCodeInput = document.getElementById("color_code");
    const colorPreview = document.getElementById("color-preview");
  
    if (colorCodeInput && colorPreview) {
      colorCodeInput.addEventListener("input", function() {
        const colorCode = colorCodeInput.value;
        colorPreview.style.backgroundColor = colorCode;
      });
    }
  });
  