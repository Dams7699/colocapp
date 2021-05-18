const wizardForm = () => {
  const step1 = document.getElementById("step_1")
  const step2 = document.getElementById("step_2")
  const step3 = document.getElementById("step_3")

  const step1Btn = document.getElementById("step_1_next")
  const step2Btn = document.getElementById("step_2_next")

  if (step1Btn || step2Btn) {
    step1Btn.addEventListener('click', (e) => {
      step1.classList.remove("step-active")
      step2.classList.add("step-active")
    });

    step2Btn.addEventListener('click', (e) => {
      step2.classList.remove("step-active")
      step3.classList.add("step-active")
    });
  }
  
}
export{wizardForm}