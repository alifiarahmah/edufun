'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "b8238abdd2e9be6906cd2a934d6a53da",
"assets/FontManifest.json": "d2f67223550ce819062ff30e1c5fee31",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/fonts/Poppins/Poppins-Black.ttf": "0573b9231a8316427ad6e751b52e87a4",
"assets/fonts/Poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/fonts/Poppins/Poppins-ExtraBold.ttf": "544fa4f2678a8285eb88b8dfe503c90c",
"assets/fonts/Poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/fonts/Poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/fonts/Poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/images/bg_episode.png": "bf01102cbfd799a7df8cd1b6ddbd11e3",
"assets/images/logo.png": "76c7761e47be5dbb337e857de6f719a7",
"assets/images/logo_app.png": "8ce1e3ed374c2cd1cdeff5ce3c23cb8a",
"assets/images/stock_boy_pencil.png": "f324ded174f28fc3af5c750411c9f37d",
"assets/images/stock_exam.png": "34349a4bcd6b6de846b28d9b8446156f",
"assets/images/stock_girl_blonde.png": "bace794408208effd25c1db338bf601b",
"assets/images/stock_girl_blonde_tablet.png": "ef28ab5abae09339e1db6ecb5beed383",
"assets/images/stock_girl_laptop.png": "d8716656d64b037dd3d764a8bedc93c5",
"assets/images/stock_graph.png": "ad2aa11b745b0b6a57c60b2f58779309",
"assets/images/stock_hoaxbuster.png": "7aa9a9b0bc4c7b50031b1e08b9785c5c",
"assets/images/stock_indicator.png": "1b604abfd3d68cbb9e35f05919df7028",
"assets/images/stock_login.png": "3edb47c214407f1e0d91052821b0f859",
"assets/images/stock_mission.png": "da1c22e8b8520edba7872ce9c4d79c25",
"assets/images/stock_puzzle.png": "ca01e29cfa170d3f48364a135eba0c6f",
"assets/images/stock_runner.png": "c37665b8e5b9bc66dd46a2fa8cbe9762",
"assets/images/stock_think.png": "980bd899ae1682fa3964fa87508a6bdb",
"assets/images/sym_book.png": "0d3cc8db7cdfdcfb2a9f656a1e73e1c9",
"assets/images/sym_coin.png": "f5ba7848816a81edf5afc41b9850650f",
"assets/images/sym_edit.png": "2c522876e002ec87e28a88c94a90c734",
"assets/images/sym_lock.png": "e0a762a54de9fe788632abb400d30ef6",
"assets/images/sym_msg.png": "a2b510b15b147c103e7c996b9c4f7bfd",
"assets/images/sym_rp.png": "9ec54ddbb14561b73ab22ae969b733c5",
"assets/images/sym_users.png": "725a112e80400e8a44bc29358ead1fee",
"assets/images/thumb_book.png": "8112fd93bb92d96d000cacddc47dd068",
"assets/images/thumb_chat.png": "c118d311778195051cf62f9dd53cc493",
"assets/images/thumb_girl.png": "ce7c3742b0411806bfbc956145981b8c",
"assets/images/thumb_heart.png": "01968de1c2ed5e1bd875a029d91c6217",
"assets/images/thumb_hug.png": "0c5b970de08d5c091d1594ae759b95c4",
"assets/images/thumb_robot.png": "87085c2ab70f2fab4db9622a5aed57dd",
"assets/NOTICES": "41317ea677792f09d81a8aa71b0dc852",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "44b4b1d7fdb572edae3672a72dc2061f",
"/": "44b4b1d7fdb572edae3672a72dc2061f",
"main.dart.js": "89b76c4fa6ca749179b3adcb7c68a4a2",
"manifest.json": "5200122b5da11897fb7791b7cbf5a01a",
"version.json": "9a88e7ef7164c02937614e29bd8072c0"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
