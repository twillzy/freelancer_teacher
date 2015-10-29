$(document).ready(function(){

  console.log(gon.current_user.id)

	var baseURL = 'https://www.freelancer.com/'
	var localURl = 'localhost:3000/' 

	$.ajaxSetup({
      headers: { 'Freelancer-Developer-Auth-V1': gon.api_id + ';' + gon.api_key }
  });

  $('#submit-project').on('click', function(e){

    e.preventDefault();
    var title = $('#title').val();
    var description = $('#description').val();
    var currency = $('#currency').val();
    var budget = $('#budget').val();
    var jobs = $('#jobs').val();

    console.log(title, description, currency, budget, jobs);

    $.ajax({
        method: "POST",
        url: baseURL + 'api/projects/0.1/projects/',
        contentType: "application/json",
        data: JSON.stringify(
        // title: title,
        //  description: description,
        //  currency: {
        //    id: 1
        //   },
        //     budget: {
        //   minimum: parseInt(budget)
        //       },
        //      jobs: [
        //   {
        //   id: 3
        //   }
        //           ]
        //   }),
        {
          title: "Build my Supefaefaefjiaor Mario Website!",
          description: "I need this website to make visual basic GUIs",
          currency: {
              id: 1
          },
          budget: {
              minimum: 1000
          },
          jobs: [
              {
                  id: 7
              }
          ]
        }),
        dataType: 'json'
      }).done(function(data){
          console.log(data)
          $.ajax({
            method: 'PUT',
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

          })
      });  
    });
})