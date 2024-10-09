'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "dde62b38ce026dede016e6d113b9b6d2",
"assets/AssetManifest.bin.json": "3493ad81a7018c0ae9c44dd1afa722a3",
"assets/AssetManifest.json": "ad25b62c44fb4be1f6d023cf23afca24",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/images/android_storage.png": "3c0b2d27cbf4c63f487465e98156c716",
"assets/images/aws.png": "ddb02c95ba0adde329ba3d8b75ef7617",
"assets/images/c++.png": "294f08034b8cfb5ddff2245388e1baed",
"assets/images/CliCricket.png": "cca938b781c259d7ff3a3c6133a9270b",
"assets/images/cloud.png": "90bd7d7a1174f8a1c2739c5d6155a51a",
"assets/images/Divider.PNG": "eae75cd3bcef7650da29c3b9edbc318d",
"assets/images/facebook.png": "659bfc4049080664f7341faccf356fb9",
"assets/images/firebase.png": "0f9ec5c7d794c31b1ac3ba3ff9420aae",
"assets/images/flutter.png": "e394563be2abc9f3552c7ad9b9c88d37",
"assets/images/java.png": "74f6f858054a083ad5e73daed614c771",
"assets/images/nosql.png": "65268b65fe3158cc6103fcad3610c5b8",
"assets/images/oop.png": "4edd2f604f4248f17e99e9f5b6c0b819",
"assets/images/profile.jpg": "487fd4bdddf4329754f02cc23d3bb519",
"assets/images/RevivePK.png": "34515d4a933958eda63442701a9c9859",
"assets/images/springboot.png": "fc046b288914455dc7a3763b8c0c168e",
"assets/images/sql.png": "83c50f282ec9f07ad28a59d6090721bf",
"assets/images/uniSystem.png": "25a570993b810449d4d2f52c35ad3ffb",
"assets/images/votingSystem.png": "754cddeaf3876880ecf51d1606ef512d",
"assets/NOTICES": "015d29d78119c185f2f37fc3b8351e24",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/web/assets/images/android_storage.png": "3c0b2d27cbf4c63f487465e98156c716",
"assets/web/assets/images/aws.png": "ddb02c95ba0adde329ba3d8b75ef7617",
"assets/web/assets/images/c++.png": "294f08034b8cfb5ddff2245388e1baed",
"assets/web/assets/images/CliCricket.png": "cca938b781c259d7ff3a3c6133a9270b",
"assets/web/assets/images/cloud.png": "90bd7d7a1174f8a1c2739c5d6155a51a",
"assets/web/assets/images/Divider.PNG": "eae75cd3bcef7650da29c3b9edbc318d",
"assets/web/assets/images/facebook.png": "659bfc4049080664f7341faccf356fb9",
"assets/web/assets/images/firebase.png": "0f9ec5c7d794c31b1ac3ba3ff9420aae",
"assets/web/assets/images/flutter.png": "e394563be2abc9f3552c7ad9b9c88d37",
"assets/web/assets/images/java.png": "74f6f858054a083ad5e73daed614c771",
"assets/web/assets/images/nosql.png": "65268b65fe3158cc6103fcad3610c5b8",
"assets/web/assets/images/oop.png": "4edd2f604f4248f17e99e9f5b6c0b819",
"assets/web/assets/images/profile.jpg": "487fd4bdddf4329754f02cc23d3bb519",
"assets/web/assets/images/RevivePK.png": "34515d4a933958eda63442701a9c9859",
"assets/web/assets/images/springboot.png": "fc046b288914455dc7a3763b8c0c168e",
"assets/web/assets/images/sql.png": "83c50f282ec9f07ad28a59d6090721bf",
"assets/web/assets/images/uniSystem.png": "25a570993b810449d4d2f52c35ad3ffb",
"assets/web/assets/images/votingSystem.png": "754cddeaf3876880ecf51d1606ef512d",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "9a39ab8aa3d828142935da9efe99b3a2",
"canvaskit/canvaskit.wasm": "afdcccf150b5cba228e27c813548b842",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "43ec75ce562f82c5dc5be1a738d87e37",
"canvaskit/chromium/canvaskit.wasm": "3909da2fbccad1a2e4a1f42750d24977",
"canvaskit/skwasm.js": "e95d3c5713624a52bf0509ccb24a6124",
"canvaskit/skwasm.js.symbols": "0b8baeff2b4484d2d6be67a7e082f9db",
"canvaskit/skwasm.wasm": "ee4afa1790abb925360fd9519c5194f7",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "d8445a04f290cf421471bb362a1beeae",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "5f73f31deed5d8901b12caae6ef0ad9a",
"/": "5f73f31deed5d8901b12caae6ef0ad9a",
"main.dart.js": "e0384072a1303318e63a24f7c24b5258",
"manifest.json": "c742a07a22a967d3bfa13d46afa1a325",
"version.json": "8b375409a624955201553b28d9817311"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
  for (var resourceKey of Object.keys(RESOURCES)) {
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
