// Use this file to do all of your initial setup - this will be run after
// core/core.js and all of your models.

/*
 *  to set up realtime for your specific models
 *  pass an array of model names into the method
 *  below:                                         */

// geddy.io.addListenersForModels();

/*
 *  example:
 *
 *  geddy.io.addListenersForModels(['Item']);
 *
 *  geddy.model.Item.on('save', function (item) {
 *    console.log(item);
 *  });
 *
 *  geddy.model.Item.on('update', function (item) {
 *    console.log(item);
 *  });
 *
 *  geddy.model.Item.on('remove', function (id) {
 *    console.log(id);
 *  });
 *
 */

console.log('ADDING LISTENER FOR: Post');
geddy.io.addListenersForModels(['Post']);
 
geddy.model.Post.on('save', function (item) {
	console.log('*** POST SAVED ***');
	console.log(item);
	console.log('*** END POST SAVED ***');
});

geddy.model.Post.on('update', function (item) {
	console.log('*** POST UPDATED ***');
	console.log(item);
	console.log('*** END POST UPDATED ***');
});
 
 geddy.model.Post.on('remove', function (id) {
 	console.log('*** POST REMOVED ***');
	console.log(item);
	console.log('*** END POST REMOVED ***');
 });