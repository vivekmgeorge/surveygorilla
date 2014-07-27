  var increment = 2;
  var string1 = ". <div class='forms'><br><br><input type='text' size='75' placeholder='question' name='question"
  var string2 = "[question]'><br><br><input type='text' size='75' placeholder='choice 1' name='question"
  var string3 = "[choice1]'><br><br><input type='text' size='75' placeholder='choice 2' name='question"
  var string4 = "[choice2]'><br><br><input type='text' size='75' placeholder='choice 3' name='question"
  var string5 = "[choice3]'><br><br></div>"

$(document).ready(function() {

  $('#addForm').on("click", function(){
    string = increment + string1 + increment + string2 + increment + string3 + increment + string4 + increment + string5
    $('.new_questions').append(string)
    $('#num_questions').attr('value', increment)
    increment ++
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
  //   var newForm = $('.forms').last().clone()
  //   var newQuestionNumber = newForm.data('question') + 1
  //   newForm.attr('data-question', newQuestionNumber)
  //   console.log(newForm)
    // // THIS DOES NOT WORK. must work on "childNodes"
    // newForm.childNodes[1].attr('name', "question" + newQuestionNumber + "[question]")
    // newForm.childNodes[2].attr('name', "question" + newQuestionNumber + "[choice1]")
    // newForm.childNodes[3].attr('name', "question" + newQuestionNumber + "[choice1]")
    // newForm.childNodes[4].attr('name', "question" + newQuestionNumber + "[choice2]")
    // $('.new_questions').append(newEl)
    // increment ++;
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

