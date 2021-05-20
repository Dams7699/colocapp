import consumer from "./consumer";

const initChatroomCable = () => {
  const notificationContainer = document.getElementById('notification-container');
  const notifBell = document.getElementById('notification-bell');
  if (notificationContainer) {
    consumer.subscriptions.create({ channel: "NotificationChannel" }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        // notificationContainer.innerHTML = data
        // notificationBullet.style.display = "block";
        notifBell.innerHTML = `<div class='notification animated bounce'>${parseInt(data.notifications, 10) + 1}</div>`
      },
    });
  }
}

export { initChatroomCable };
