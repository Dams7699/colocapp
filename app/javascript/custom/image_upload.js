const imageUpload = () => {
  const csrfToken = document.querySelector("meta[name=csrf-token]").content
  const input = document.getElementById("user_photo")
  if (input) {
    input.addEventListener("change", (e) => {
      const file = input.files[0]
      let formData = new FormData()
      formData.append('user[photo]', file)
      formData.append('authenticity_token', csrfToken)

      
      fetch("/profil", 
        {
          method: "put",
          body: formData
        }
      ).then(response => { document.location.reload() })
    });
  }
};
export { imageUpload }