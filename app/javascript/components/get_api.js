const getApi = () => {
  const queryApi = document.querySelector('#api-query');
  const getApiBtn = document.querySelector('#api-button');
  const displayApi = document.querySelector('#api-display');
  if(!getApi) {
    return
  }
  getApiBtn.addEventListener('click', (e) => {
    e.preventDefault();
    console.log(queryApi.value);
    fetch(queryApi.value, {mode: 'no-cors'})
      .then(data => data.json())
      .then(data => {
        displayApi.innerHTML = "<pre class='h-100'>" + JSON.stringify(data, undefined, 2) + "</pre>";
      });
  });
}

export { getApi }

 // function getApi(e) {
 //    const display = document.querySelector('#api-display');
 //    const request = document.querySelector('#api-test').value;
 //    display.innerText = "Fetching result...";
 //    fetch(request, {mode: 'no-cors'})
 //      .then(data => data.json())
 //      .then(data => {
 //        display.innerHTML = "<pre class='h-100'>" + JSON.stringify(data, undefined, 2) + "</pre>";
 //      });
 //  }
