

const calculatePrice = () => {
  const price = document.getElementById("price");
  const hours = document.getElementById('hours');



  if (hours) {
    hours.addEventListener('keyup', event => {
      // console.log(event)
      // console.log(event.target.value)
      const hour = event.target.value;
      const hourlyRate = parseFloat(price.innerHTML);
      let totalRate = 0;
      totalRate = hour * hourlyRate;
      const totalPrice =  document.getElementById('rate');
      totalPrice.value = totalRate;
    });
  }
}

 export {calculatePrice};








