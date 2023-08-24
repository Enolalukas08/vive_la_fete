const belongsToUser = '@belongs_to_user';

const buttonContainer = document.getElementById("button-container");
const buttonElement = document.createElement("button");

if (belongsToUser) {
  buttonElement.textContent = "Modifier produit";
  // Attach a click event listener for the "btn modifier" action
  buttonElement.addEventListener("click", function() {
    window.location.href = '<%= edit_article_path(@article) %>';
  });
} else {
  buttonElement.textContent = "Réservation";
  // Attach a click event listener for the "btn reserver" action
  buttonElement.addEventListener("click", function() {
    // Toggle the reservation button using the "toggle" controller
    const reservationButton = document.querySelector('.btn-reservation');
    reservationButton.classList.toggle('hidden'); // Assuming 'hidden' class hides the button
  });
}

// Add the button to the container
buttonContainer.appendChild(buttonElement);
