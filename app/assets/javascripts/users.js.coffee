$(document).on "ajax:success", "form.search-users", (event) ->
  [data, status, xhr] = event.detail;
  $('.users-results').html(data.data);
