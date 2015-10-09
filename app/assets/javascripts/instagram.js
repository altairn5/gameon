var feed = new Instafeed({
  clientId: '98ad19a7321546ccbd591f15bab18c01',
  limit: 33,
  get: 'tagged',
  tagName: 'gameon',
  after: function () {
    var images = $("#instafeed").find('a');
    $.each(images, function(index, image) {
      var delay = (index * 75) + 'ms';
      $(image).css('animation-delay', delay);
      $(image).addClass('animated flipInX');
    });
  },
  template: '<a href="{{link}}" target="_blank"><img src="{{image}}" /><div class="likes">&hearts; {{likes}}</div></a>'
});
feed.run();