$(document).ready(function() {
  increment = 1;

  $('#addForm').click(function() {
    var newEl = $('.forms').last().clone()
    var newQuestionNumber = newEl.data('question') + 1
    newEl.attr('data-question', newQuestionNumber)
    $('.new_questions').append(newEl)
    increment ++;
  });

  $('#submitButton').click(function(e) {
    e.preventDefault();
    var form = $(".surveyForm").serialize()
    console.log(form);
    $.ajax({
      url: "/surveys",
      data : $("#forms").serialize(),
      type : "POST"
    }).success(function(response){
      console.log("success");
    }).fail(function(response){
      console.log("fail");
    });
  });
});

// });

