function checkIfOther(selectElement) {
  var customHospitalNameInput = document.getElementById("custom-hospital-name");
  if (selectElement.value === "その他") {
    customHospitalNameInput.style.display = "block";
  } else {
    customHospitalNameInput.style.display = "none";
  }
}
