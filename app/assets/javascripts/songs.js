function toggleDone() {
  $(this).parent().parent().toggleClass("success");
}

function createSong(name) {
  var artistShow = $('#artist-id');
  var artistId = artistShow.data('id');
  var newSong = {
    name: name
  };

  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + "/songs",
    data: JSON.stringify({
      song: newSong,
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    var checkboxId = data.id;

    var label = $('<label></label>')
      // .attr('for', checkboxId)
      .html(name);

    var checkbox = $('<input type="checkbox" value="1" />')
      .attr('id', checkboxId)
      .bind('change', toggleDone);

    var tableRow = $('<tr class="song"></tr>')
      // .attr('data-id', checkboxId)
      // .append($('<td>').append(checkbox))
      .append($('<td>').append(label));

    $("#songList").append(tableRow);

  })

  .fail(function(error) {
    console.log(error)
    error_message = error.responseJSON.name[0];
    showError(error_message);
  });
}

function submitSong(event) {
  event.preventDefault();
  var name = $("#new-song").val();
  createSong(name);
  $("#new-song").val(null);
}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  // $("#clean-up").bind('click', cleanUpDoneTodos);
});
