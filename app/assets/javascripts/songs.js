function createSong(name) {
  var artistShowId = $('#artist-id');
  var artistId = artistShowId.data('id');
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

    data.id;

    var label = $('<label></label>')
      .html(name);


    var tableRow = $('<tr class="song"></tr>')
      .append($('<td>').append(label));

    $("#songList").append(tableRow);

  })

  .fail(function(error) {
    console.log(error)
    error_message = error.responseJSON.name[0];
    showError(error_message);
  });
}

function deleteSong() {
  var artistShowId = $('#artist-id');
  var artistId = artistShowId.data('id');
  var songShowId = $('#song-list');
  var songId = songShowId.data('id');


  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistId + "/songs/" + songId,
    contentType: "application/json",
    dataType: "json"})

  .done(function(data) {
    // $(this).closest('label').empty();
  })
}

function submitDelete(event) {

  event.preventDefault();
  deleteSong()
  // var songShowId = $('#song-list');
  // $(songId).remove();

}

function submitSong(event) {
  event.preventDefault();
  var name = $("#new-song").val();
  createSong(name);
  $("#new-song").val(null);
}

$(document).ready(function() {
  $("form").bind('submit', submitSong);
  $(".destroy-song").on('click', submitDelete);
});
