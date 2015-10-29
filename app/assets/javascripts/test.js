$(document).ready(function(){
	console.log(gon.current_user)

	var baseURL = 'https://www.freelancer.com/'
	var localURl = 'localhost:3000/'
  var title = $('#title').val();
  var description = $('#description').val();
  var currency = $('#currency').val();
  var budget = $('#budget').val();
  var jobs = $('#jobs').val();

  console.log(title)
  console.log(description)
  console.log(currency)
  console.log(budget)
  console.log(jobs) 


		$.ajaxSetup({
        headers: { 'Freelancer-Developer-Auth-V1': gon.api_id + ';' + gon.api_key }
    });

    $.ajax({
      method: "POST",
      url: baseURL + 'api/projects/0.1/projects/',
      contentType: "application/json",
      data: JSON.stringify({
<<<<<<< Updated upstream
      title: "Build me a lolaeiojfaafaefaeiof website!",
       description: "I need a ecommerce website",
=======
      title: title,
       description: description,
>>>>>>> Stashed changes
       currency: {
         id: 1
        },
          budget: {
        minimum: budget
            },
           jobs: [
        {
        name: "javascript"
        }
                ]
        }),
      dataType: 'json'
    }).done(function(data){
        console.log(data)
        $.ajax({
        	method: 'PUT',
<<<<<<< Updated upstream
        	url: '/' + 'projects/' + gon.current_user.id,
        	contentType: "application/json",
        	data: JSON.stringify({
            user: {
          		user_id: gon.current_user.id,
          		pfid: data.result.id
            }
        	}),
          dataType: 'json'
        }).done(function(d){
          console.log(d)
=======
        	url: '/' + 'users/' + gon.current_user.id,
        	contentType: "application/json",
        	data: {
            user: {
        		user_id: gon.current_user.id,
        		pfid: data.results.id
        	}
        }
          

>>>>>>> Stashed changes
        })
    });  

})