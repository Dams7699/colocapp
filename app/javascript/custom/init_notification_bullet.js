const initNotificationBullet = () => {
  const notificationLink = document.getElementById("notification-link")

  if (notificationLink) {
    notificationLink.addEventListener('click', (event) => {
      notificationLink.querySelector(".notification").style.display = "none"
    })
  }
}

export { initNotificationBullet }
