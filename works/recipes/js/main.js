var currentPage = 0;
////////////////

$('#next').on('click', '.active', nextPage)
$('#preview').on('click', '.flipped', prevPage);

$('#next').on("click", nextPage);
$('#preview').on("click", prevPage);

function prevPage(){
  $('.flipped')
    .last()
    .removeClass('flipped')
    .addClass('active')
    .siblings('.page')
    .removeClass('active');
}
function nextPage(){
  $('.active')
    .removeClass('active')
    .addClass('flipped')
    .next('.page')
    .addClass('active')
    .siblings();  
};
$( "#download" ).click(function() {
  $( "#content-favorites" ).toggle( "slow" );
});
