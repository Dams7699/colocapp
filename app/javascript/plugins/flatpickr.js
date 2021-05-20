import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: "2003-01"
  });
}

export { initFlatpickr };
