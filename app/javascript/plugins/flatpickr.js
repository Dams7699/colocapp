import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    maxDate: "2005-01"
  });
}

export { initFlatpickr };
