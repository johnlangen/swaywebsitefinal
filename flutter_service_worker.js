'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "82e0f053b4f81a303138dbc1d185896e",
"index.html": "61bdc4b3a78542da5ec682302fbedca8",
"/": "61bdc4b3a78542da5ec682302fbedca8",
"main.dart.js": "50c320e6e1d37919b2765d8e6819782e",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "05c742c3b24b76570d347b2b2720f0b9",
".git/config": "cf66ef79b3f4193fc5eefbee415501e7",
".git/objects/59/be5a3eab4db6ec0ed33e164c929936a8f1db2a": "a39097163148a30847ae3b6196812e98",
".git/objects/66/7d9f0888753308f24b2b7973d7e89a4e7670e5": "3619669c95a9d4706943d3620352619f",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/32/a9662d4b3d03420a135ab4938108e7761d5b75": "b9f02c34298e1395a525f97ade3ab593",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/51/f38f29e13569229909a7c56eb267f046bb3c71": "9d0c842e4f2c91eccdef79a8894e4b42",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/94/5d004ae2402ce66b9f5205de9d0d08b1aa1a0e": "64963139616841b9ae54ce50b7885090",
".git/objects/34/0e929cdd6f4c10012d86e023e9e5d882122121": "8676cd451e31321204e53e4a6fed3ef6",
".git/objects/5a/7d5b003f86ef907180d6eb03999e4d023f7841": "0739069e6f3bb62b62830b1717a7c93b",
".git/objects/9c/489526266ea5fce8fd7177a3ae71944492e6d6": "aa8c37e97e37048be5991fdb673c5038",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/bb/e8d54f7c2f3724fa7ab5c260646ff8cbc93a05": "fc13d7b09c7c43556bad2b7f84c71d3a",
".git/objects/bb/45fd9f8a2b88911ff1f0f1931fb89e1eccf728": "6f31e7657a3371c562a6fa5f10a5bf1d",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/d6/0803875eccd424a30a5ed923370263fc73ddbc": "cf9201db107b45a3c7a6dc2b46e64dd7",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/ae/2076bda88cf15ffd9a4f7a850ce5a7bdc0476d": "fe44a9d660c2de32cc02a0085e5beaf5",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/4eb9d9942cd210955a5551024663a29082526c": "8922755a140acbf40e667b6855927847",
".git/objects/fc/e724e61c2b47ac36d2987a99c18c6bd42d601d": "4ff5da7831d77091976e8ccd3631fdf7",
".git/objects/f2/cb4a360150bc5a21a29433147adc7212925118": "4c1c6e5c36b415f19317f6b1d8b83c29",
".git/objects/fb/adccde29fc3dab2cded15f8bf822e20e3cc766": "035062da3bda885c324bfd26b13d512e",
".git/objects/ed/10c3bb3602fa9650a190262661a31b90debd15": "6e9b0304b8f52c0eb60f8eac96ce6775",
".git/objects/c1/becd6445f9e122d3f78ae51ed872512413b15e": "d31d5114d9e13855d13d616b83e22903",
".git/objects/ec/339285b2aaa9ec03465393188e898320a96e81": "0cd8734c7e20736dcf140dcb54ed9040",
".git/objects/20/d87d117c31184ea7e3abbeb48bbc95a9f4424f": "c1dda5ef7e85559f8651cb33da3bce85",
".git/objects/18/8421acae5290f7a2ac05a3449ee6b08b2882aa": "eadefdbbd46e5d2cdf75e395fd93abd4",
".git/objects/4b/f75a8103c7b9e6d090e5374287761d0e6935b7": "8b488bff7c3c660137ffad20e99f9016",
".git/objects/45/fd454b2fca72e74f34326b77ce9a450f089b29": "49de810a79b70f22e1ae5a0a70b4ebf3",
".git/objects/1f/305552acd9fc73fd727cd909950a5e5454d854": "b70cdbc8846a9d373f85ed5c34f62f45",
".git/objects/80/73de707f0426671d7e797049329b1141cfc304": "5f9c23bb9be1756fd031b0d3ce398e1f",
".git/objects/1a/9cbecb90d3607618579f7d6f879ea682c37ebe": "9f39414a0fed9290567232e932a805b6",
".git/objects/17/5510365f0a9b318a0f8fd2bbbb71c14ce358bf": "711fb8f6633e61a5a30588dc5c81b58d",
".git/objects/17/600b69486b417a556e948f4d3f05f7f1dbeefb": "c4d3cb1c485a56c02b8b45e0f53f31f3",
".git/objects/7b/da776a4bdab324c188a9ca85a812c8da148036": "00cb47ab3ee1fb8c78b6b2d430e56f93",
".git/objects/7b/66b3d490dd09cd8494ee6430d12a89f65435dc": "d5bfcbb88ff7c69ec1a5c2d5751180ae",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/6817c3c68a9336564d35a440ec24e543a4fbc6": "49d4b11883f9531cb0c8253f7e4f0ba1",
".git/objects/19/72a848d02f9eca2308cae8e18e697cc62e78d0": "3c28fb3360888ee3ff8cb9f7f71c164b",
".git/objects/26/aeafc2762285ad08bb376563fdff76499de20e": "685b77a528f90d974f6771598a64fdc0",
".git/objects/21/7eaf4b4c43a64aae8ee0cee3158e50a82e9c23": "ad687d80f01fb7afc7fb36c57949053b",
".git/objects/4d/623238d2e6c591fccba079d02dd9ac70af4fae": "1a8912b0c10ce32980eb19dfae5a8e25",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/00/2f0ac3f37a452f32c3a11e301fa0bd22cd323c": "741af8dfac149709337dade4576a7772",
".git/objects/6e/bec5d1f4cd0c73531a9319b430226badf27cb4": "3538faac1b0871482a8efbd0624352bf",
".git/objects/9a/5c3b892990d57f89b04e42db9772be5b671ada": "d6c41beeb988a48d7ee64574ee7cba75",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/3a/e8ee3d1f16b9b9fdb0b26edf3fd8390fce425c": "53f0029cb0f3659c2c57514ba8568b4c",
".git/objects/3a/c67b0e54ad8253e87bbae67c52e17ef27bd4dd": "83278d572f3941b1892dbbff9702d6b9",
".git/objects/5b/dd15046fd774d10ea6f4e9e1020da9372b809d": "1cd074f50a1c938d40ff8ddb32644b1a",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/63/9e127b3852ef680f0307a04e9b45b200647221": "9f79a4e544b8a6ebff2b2abdd176ba94",
".git/objects/0f/57f599512f804b7308d218db35171a4f8b654a": "36aab2de606b8adc081086fdf7bf424e",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/744ab127767e19c67837da53b0b00bb6eeb985": "26cc10073ab805750b27174a1aab3788",
".git/objects/ba/de004a412cb94faf1a367942e327e70ff966df": "f84f45d971c16d8069254b18398611c6",
".git/objects/d5/5b70d3dbdf6cd8c1e797b6b92e8e43609cc4d8": "ce296b16b1586f1284914aff9e152e68",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/fa/4bda2042208e5582b56e842acd676b7a18eeb9": "18417ac1f82b792f73053fbfa480152e",
".git/objects/e7/5e920f175da53dd6f04d858636baa25dc702f4": "0fd694d0b7477cee41611e70d0cd6732",
".git/objects/cb/3bb823e157f7c46013b812e7f35b6b2d33cf00": "fcc886b6dd1e02f4c0103d64b34993c8",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/46/1144f66eb4488e5227629d933290079151dc4e": "1d3fb4ed62c679879ed3c4ae81232a38",
".git/objects/41/96f3fe3df985bf2b83f11acb46bd224abacc63": "65c6934919437c60a92a38b5de85c8de",
".git/objects/83/bbb0bbde6965dba557fecd3333f76cc5d67000": "a035f4ed157b50c5f225a43fcada5108",
".git/objects/77/994057bc051b0eec4794baffb364f7f05bf4f8": "483155db50bcd8ad2d40a4cf33721969",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/15/8891c770bfd75f63bc1c22be1f36f9000769fb": "17b6462801083757eee89ec52ee6c061",
".git/objects/12/9c154d051826759fd1e5c186fe1f446f552d85": "2efd11d7b4dd4b7f4092e59d8ba79d63",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/76/8c3c494dad51e297426275f885c890d540a36f": "a1b994e4f12e55cb24331c2cf2026c81",
".git/objects/49/830d93ebb79f147a633001db85eae298761807": "af5339baa685a9ffcd5f54a42e5abaa0",
".git/objects/2e/b09cc44bb52fc7f949fb705dc4994eb646935b": "0d5b3cbfbe0e86722430df768b344428",
".git/objects/7f/df09ac0a935ec65c71eb22c9cedfa26de81d2b": "208617b2aef0cf503facccdd977b2f62",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/8e/417c17459c8e82cb91cf4a38cd558bac39a0bc": "dccd8a2931c278ea99ecac092031ad0a",
".git/objects/22/17f03265682f5dfee24afba3d72df44857023a": "cf746eb7ff914579209675a70fc7083c",
".git/objects/22/7de21bd1cd35f31c56da7b5747a99209605d17": "0c420bd12f2dd3da9f0003cbb83438e9",
".git/objects/22/f32651d194c8cf1d8940bcbc15c7055ae18501": "6c6e48a6842890af8ad3137656adc635",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "bf7ba643e9368323d7b7f3730f90a559",
".git/logs/refs/heads/gh-pages": "0e04b118d224a6de963e9806b4f47fdc",
".git/logs/refs/remotes/origin/gh-pages": "51b4933faf267c1fd76c22a1a29031b6",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/refs/heads/gh-pages": "ec8bf376887cffe01cc736e6c6f54369",
".git/refs/remotes/origin/gh-pages": "ec8bf376887cffe01cc736e6c6f54369",
".git/index": "cbd2115c61c715fbf40f96629b9f4167",
".git/COMMIT_EDITMSG": "d778d8b1f42d0dd1bb284e5ca9549187",
"assets/AssetManifest.json": "07bdec898fc184d4410ecec16a5d6f69",
"assets/NOTICES": "73763e33974f8bef289728ca36ea5888",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "5065144d7e9a4d6f7ecbb05e65c6fd66",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/assets/images/swaylogofinal.png": "a7422df682cce5d9990252055cc76608",
"assets/assets/images/green_wall.png": "e2b9b71e29f19319573be2a13c29fff6",
"assets/assets/images/swaylogofinaltransparent.png": "08f6663ab179ca50fb59626e231300b6",
"assets/assets/images/swaylogotransparent.png": "134562d1974e79f462bd3610bba65cf0",
"assets/assets/images/swaylogo.JPG": "ae193ffac4a5986e5bc0e22e1c021f3a",
"assets/assets/images/swaygreenwall.png": "a0d2a253aa0b28ebfe61f2b1f3adda18",
"assets/assets/images/green_wall2.png": "f4f56e1fa6bfc8fe2b5394b30ccc7144",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
