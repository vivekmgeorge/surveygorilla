  var increment = 2;
  var string1 = "<div class='forms'><br><br><input type='text' placeholder='question' name='question"
  var string2 = "[question]'><br><br><input type='text' placeholder='choice 1' name='question"
  var string3 = "[choice1]'><br><br><input type='text' placeholder='choice 2' name='question"
  var string4 = "[choice2]'><br><br><input type='text' placeholder='choice 3' name='question"
  var string5 = "[choice3]'><br><br></div>"

$(document).ready(function() {

  $('#test').on("click", function(){
    string = string1 + increment + string2 + increment + string3 + increment + string4 + increment + string5
    $('.forms').append(string)
    increment ++
    $('#num_questions').attr('value', increment)
  })
  // $('#test').click(function(e) {
  //   e.preventDefault();
  //   var formData = $('.surveyForm').serialize();
  //   $.post('/surveys', formData).done(function(response){
  //     console.log("success");
  //     $('form').find('input[type=text]').val('');
  //     $('.new_questions').empty();
  //     $('.new_questions').html(response)
  //   }).fail(function(response){
  //     console.log("fail");
  //   });
  // });


  // $('#addForm').click(function() {
  //   var newEl = $('.forms').last().clone()
  //   var newQuestionNumber = newEl.data('question') + 1
  //   newEl.attr('data-question', newQuestionNumber)
  //   $('.new_questions').append(newEl)
  //   increment ++;
  // });




  // $('#submitButton').click(function(e) {
  //   e.preventDefault();
  //   var form = $(".surveyForm").serialize()
  //   console.log(form);
  //   $.ajax({
  //     url: "/surveys",
  //     data : $("#forms").serialize(),
  //     type : "POST"
  //   }).success(function(response){
  //     console.log("success");
  //   }).fail(function(response){
  //     console.log("fail");
  //   });
  // });
});

// });

