'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "59e4dd07412cc5d635b05786492004e2",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/LICENSE": "8c61598cf05798fd3630d4a2c1131d4e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "31dd14151e074e3a2a473b9c6e9e8b67",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "d9bf0289fe8bf569cd91eb4a27f598b6",
"/": "d9bf0289fe8bf569cd91eb4a27f598b6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
