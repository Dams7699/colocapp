import consumer from "./consumer";

const initChatroomCable = () => {
  const notificationContainer = document.getElementById('notification-container');
  const notificationBullet = document.querySelector('.notification');
  if (notificationContainer) {
    consumer.subscriptions.create({ channel: "NotificationChannel" }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        notificationContainer.innerHTML = data
        notificationBullet.style.display = "block";
      },
    });
  }
}

export { initChatroomCable };
