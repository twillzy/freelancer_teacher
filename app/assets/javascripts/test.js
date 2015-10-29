$(document).ready(function(){

  console.log(gon.current_user.id)

	var baseURL = 'https://www.freelancer.com/'
	var localURl = 'localhost:3000/' 

  var url = window.location.pathname
  var regEx =/\/projects\/\d+/

	$.ajaxSetup({
      headers: { 'Freelancer-Developer-Auth-V1': gon.api_id + ';' + gon.api_key }
  });

  $('#submit-project').on('click', function(e){

    var title1 = $('#title').val();
    var description1 = $('#description').val();
    var currency1 = $('#currency').val();
    var budget1 = $('#budget').val();
    var jobs1 = $('#jobs').val();

    currency1 = parseFloat(currency1);
    jobs1 = parseFloat(jobs1);
    budget1 = parseFloat(budget1);

    console.log(title1, description1, currency1, budget1, jobs1);

    $.ajax({
        method: "POST",
        url: baseURL + 'api/projects/0.1/projects/',
        contentType: "application/json",
        data: JSON.stringify({
           title: title1,
           description: description1,
           currency: {
               id: currency1
           },
           budget: {
               minimum: budget1
           },
           jobs: [
               {
                   id: jobs1
               }
           ]
         }),
        dataType: 'json'
      }).done(function(data){
          console.log(data)
          $.ajax({
            method: 'POST',
            url: '/projects',
            contentType: "application/json",
            data: JSON.stringify({
              project: {
                user_id: gon.current_user.id,
                fpid: data.result.id,
                title: data.result.title,
                description: data.result.description,
                currency: data.result.currency.id.toString(),
                budget: data.result.budget.minimum.toString(),
                jobs: data.result.jobs[0].name,
              }
            }),
            dataType: 'json'
          }).done(function(d){
            console.log(d)

          })
      });  
    });

   if ( url.match(regEx) ) {
      console.log(gon.fpid)
      var baseURL = 'https:www.freelancer.com/'
      
      $.ajax({
        method: "GET",
        url: baseURL + 'api/projects/0.1/bids/',
        contentType: "application/json",
        data: 'compact&projects[]=' + /* gon.fpid -> thats a hard coded val */ 8794268
      }).done(function( data ) {
        console.log(data)
        var bids = data.result.bids
        bids.forEach(function(element, index){
          $.ajax({
            method: "GET",
            url: baseURL + 'api/users/0.1/users/' + element.bidder_id + '/?/' + '&avatar&reputation_extra&jobs&profile_description',
            contentType: "application/json"
            }).done(function(bata){
              console.log(bata)
              var userId = element.bidder_id.toString()
              $.ajax({
                method: "POST",
                url: '/bids',
                contentType: 'application/json',
                data: JSON.stringify({ bid: {
                  bidder_id: Number(userId),
                  project_id: /* gon.fpid -> thats a hard coded val */ 8794268,
                  bid_amount: element.amount,
                  name: bata.result.username,
                  location: bata.result.location.city,
                  proposal: element.description,
                  skills: bata.result.jobs[0].name,
                  profile: bata.result.profile_description,
                  avatar: 'https' + bata.avatar_cdn,
                  reputation: bata.result.reputation.last12months.overall
                } })
              }).done(function(m){
                  console.log('success')              
                })
            })     
        })
      }); 

    }  

})