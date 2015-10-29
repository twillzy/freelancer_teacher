// $(document).ready(function(){
// 	console.log(gon.current_user)

// 	var baseURL = 'https://www.freelancer.com/'
// 	var localURl = 'localhost:3000/'
// 		$.ajaxSetup({
//         headers: { 'Freelancer-Developer-Auth-V1': gon.api_id + ';' + gon.api_key }
//     });

//     $.ajax({
//       method: "POST",
//       url: baseURL + 'api/projects/0.1/projects/',
//       contentType: "application/json",
//       data: JSON.stringify({
//       title: "Build me a lolaeiojfaafaefaeiof website!",
//        description: "I need a ecommerce website",
//        currency: {
//          id: 1
//         },
//           budget: {
//         minimum: 200
//             },
//            jobs: [
//         {
//         id: 3
//         }
//                 ]
//         }),
//       dataType: 'json'
//     }).done(function(data){
//         console.log(data)
//         $.ajax({
//         	method: 'PUT',
//         	url: '/' + 'projects/' + gon.current_user.id,
//         	contentType: "application/json",
//         	data: JSON.stringify({
//             user: {
//           		user_id: gon.current_user.id,
//           		pfid: data.result.id
//             }
//         	}),
//           dataType: 'json'
//         }).done(function(d){
//           console.log(d)
//         })
//     });  

// })