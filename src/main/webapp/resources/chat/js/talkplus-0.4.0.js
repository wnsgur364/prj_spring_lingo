(function (A, y) {
  typeof exports == "object" && typeof module < "u"
    ? y(exports)
    : typeof define == "function" && define.amd
    ? define(["exports"], y)
    : ((A = typeof globalThis < "u" ? globalThis : A || self),
      y((A.TalkPlus = {})));
})(this, function (A) {
  "use strict";
  var Re = Object.defineProperty;
  var Me = (A, y, b) =>
    y in A
      ? Re(A, y, {
          enumerable: !0,
          configurable: !0,
          writable: !0,
          value: b,
        })
      : (A[y] = b);
  var w = (A, y, b) => (Me(A, typeof y != "symbol" ? y + "" : y, b), b);
  var y =
      (typeof globalThis < "u" && globalThis) ||
      (typeof self < "u" && self) ||
      (typeof y < "u" && y),
    b = {
      searchParams: "URLSearchParams" in y,
      iterable: "Symbol" in y && "iterator" in Symbol,
      blob:
        "FileReader" in y &&
        "Blob" in y &&
        (function () {
          try {
            return new Blob(), !0;
          } catch {
            return !1;
          }
        })(),
      formData: "FormData" in y,
      arrayBuffer: "ArrayBuffer" in y,
    };
  function re(n) {
    return n && DataView.prototype.isPrototypeOf(n);
  }
  if (b.arrayBuffer)
    var ie = [
        "[object Int8Array]",
        "[object Uint8Array]",
        "[object Uint8ClampedArray]",
        "[object Int16Array]",
        "[object Uint16Array]",
        "[object Int32Array]",
        "[object Uint32Array]",
        "[object Float32Array]",
        "[object Float64Array]",
      ],
      ae =
        ArrayBuffer.isView ||
        function (n) {
          return n && ie.indexOf(Object.prototype.toString.call(n)) > -1;
        };
  function _(n) {
    if (
      (typeof n != "string" && (n = String(n)),
      /[^a-z0-9\-#$%&'*+.^_`|~!]/i.test(n) || n === "")
    )
      throw new TypeError(
        'Invalid character in header field name: "' + n + '"'
      );
    return n.toLowerCase();
  }
  function P(n) {
    return typeof n != "string" && (n = String(n)), n;
  }
  function B(n) {
    var r = {
      next: function () {
        var e = n.shift();
        return {
          done: e === void 0,
          value: e,
        };
      },
    };
    return (
      b.iterable &&
        (r[Symbol.iterator] = function () {
          return r;
        }),
      r
    );
  }
  function m(n) {
    (this.map = {}),
      n instanceof m
        ? n.forEach(function (r, e) {
            this.append(e, r);
          }, this)
        : Array.isArray(n)
        ? n.forEach(function (r) {
            this.append(r[0], r[1]);
          }, this)
        : n &&
          Object.getOwnPropertyNames(n).forEach(function (r) {
            this.append(r, n[r]);
          }, this);
  }
  (m.prototype.append = function (n, r) {
    (n = _(n)), (r = P(r));
    var e = this.map[n];
    this.map[n] = e ? e + ", " + r : r;
  }),
    (m.prototype.delete = function (n) {
      delete this.map[_(n)];
    }),
    (m.prototype.get = function (n) {
      return (n = _(n)), this.has(n) ? this.map[n] : null;
    }),
    (m.prototype.has = function (n) {
      return this.map.hasOwnProperty(_(n));
    }),
    (m.prototype.set = function (n, r) {
      this.map[_(n)] = P(r);
    }),
    (m.prototype.forEach = function (n, r) {
      for (var e in this.map)
        this.map.hasOwnProperty(e) && n.call(r, this.map[e], e, this);
    }),
    (m.prototype.keys = function () {
      var n = [];
      return (
        this.forEach(function (r, e) {
          n.push(e);
        }),
        B(n)
      );
    }),
    (m.prototype.values = function () {
      var n = [];
      return (
        this.forEach(function (r) {
          n.push(r);
        }),
        B(n)
      );
    }),
    (m.prototype.entries = function () {
      var n = [];
      return (
        this.forEach(function (r, e) {
          n.push([e, r]);
        }),
        B(n)
      );
    }),
    b.iterable && (m.prototype[Symbol.iterator] = m.prototype.entries);
  function D(n) {
    if (n.bodyUsed) return Promise.reject(new TypeError("Already read"));
    n.bodyUsed = !0;
  }
  function F(n) {
    return new Promise(function (r, e) {
      (n.onload = function () {
        r(n.result);
      }),
        (n.onerror = function () {
          e(n.error);
        });
    });
  }
  function oe(n) {
    var r = new FileReader(),
      e = F(r);
    return r.readAsArrayBuffer(n), e;
  }
  function he(n) {
    var r = new FileReader(),
      e = F(r);
    return r.readAsText(n), e;
  }
  function le(n) {
    for (
      var r = new Uint8Array(n), e = new Array(r.length), t = 0;
      t < r.length;
      t++
    )
      e[t] = String.fromCharCode(r[t]);
    return e.join("");
  }
  function q(n) {
    if (n.slice) return n.slice(0);
    var r = new Uint8Array(n.byteLength);
    return r.set(new Uint8Array(n)), r.buffer;
  }
  function x() {
    return (
      (this.bodyUsed = !1),
      (this._initBody = function (n) {
        (this.bodyUsed = this.bodyUsed),
          (this._bodyInit = n),
          n
            ? typeof n == "string"
              ? (this._bodyText = n)
              : b.blob && Blob.prototype.isPrototypeOf(n)
              ? (this._bodyBlob = n)
              : b.formData && FormData.prototype.isPrototypeOf(n)
              ? (this._bodyFormData = n)
              : b.searchParams && URLSearchParams.prototype.isPrototypeOf(n)
              ? (this._bodyText = n.toString())
              : b.arrayBuffer && b.blob && re(n)
              ? ((this._bodyArrayBuffer = q(n.buffer)),
                (this._bodyInit = new Blob([this._bodyArrayBuffer])))
              : b.arrayBuffer &&
                (ArrayBuffer.prototype.isPrototypeOf(n) || ae(n))
              ? (this._bodyArrayBuffer = q(n))
              : (this._bodyText = n = Object.prototype.toString.call(n))
            : (this._bodyText = ""),
          this.headers.get("content-type") ||
            (typeof n == "string"
              ? this.headers.set("content-type", "text/plain;charset=UTF-8")
              : this._bodyBlob && this._bodyBlob.type
              ? this.headers.set("content-type", this._bodyBlob.type)
              : b.searchParams &&
                URLSearchParams.prototype.isPrototypeOf(n) &&
                this.headers.set(
                  "content-type",
                  "application/x-www-form-urlencoded;charset=UTF-8"
                ));
      }),
      b.blob &&
        ((this.blob = function () {
          var n = D(this);
          if (n) return n;
          if (this._bodyBlob) return Promise.resolve(this._bodyBlob);
          if (this._bodyArrayBuffer)
            return Promise.resolve(new Blob([this._bodyArrayBuffer]));
          if (this._bodyFormData)
            throw new Error("could not read FormData body as blob");
          return Promise.resolve(new Blob([this._bodyText]));
        }),
        (this.arrayBuffer = function () {
          if (this._bodyArrayBuffer) {
            var n = D(this);
            return (
              n ||
              (ArrayBuffer.isView(this._bodyArrayBuffer)
                ? Promise.resolve(
                    this._bodyArrayBuffer.buffer.slice(
                      this._bodyArrayBuffer.byteOffset,
                      this._bodyArrayBuffer.byteOffset +
                        this._bodyArrayBuffer.byteLength
                    )
                  )
                : Promise.resolve(this._bodyArrayBuffer))
            );
          } else return this.blob().then(oe);
        })),
      (this.text = function () {
        var n = D(this);
        if (n) return n;
        if (this._bodyBlob) return he(this._bodyBlob);
        if (this._bodyArrayBuffer)
          return Promise.resolve(le(this._bodyArrayBuffer));
        if (this._bodyFormData)
          throw new Error("could not read FormData body as text");
        return Promise.resolve(this._bodyText);
      }),
      b.formData &&
        (this.formData = function () {
          return this.text().then(de);
        }),
      (this.json = function () {
        return this.text().then(JSON.parse);
      }),
      this
    );
  }
  var ue = ["DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT"];
  function ce(n) {
    var r = n.toUpperCase();
    return ue.indexOf(r) > -1 ? r : n;
  }
  function N(n, r) {
    if (!(this instanceof N))
      throw new TypeError(
        'Please use the "new" operator, this DOM object constructor cannot be called as a function.'
      );
    r = r || {};
    var e = r.body;
    if (n instanceof N) {
      if (n.bodyUsed) throw new TypeError("Already read");
      (this.url = n.url),
        (this.credentials = n.credentials),
        r.headers || (this.headers = new m(n.headers)),
        (this.method = n.method),
        (this.mode = n.mode),
        (this.signal = n.signal),
        !e && n._bodyInit != null && ((e = n._bodyInit), (n.bodyUsed = !0));
    } else this.url = String(n);
    if (
      ((this.credentials = r.credentials || this.credentials || "same-origin"),
      (r.headers || !this.headers) && (this.headers = new m(r.headers)),
      (this.method = ce(r.method || this.method || "GET")),
      (this.mode = r.mode || this.mode || null),
      (this.signal = r.signal || this.signal),
      (this.referrer = null),
      (this.method === "GET" || this.method === "HEAD") && e)
    )
      throw new TypeError("Body not allowed for GET or HEAD requests");
    if (
      (this._initBody(e),
      (this.method === "GET" || this.method === "HEAD") &&
        (r.cache === "no-store" || r.cache === "no-cache"))
    ) {
      var t = /([?&])_=[^&]*/;
      if (t.test(this.url))
        this.url = this.url.replace(t, "$1_=" + new Date().getTime());
      else {
        var s = /\?/;
        this.url +=
          (s.test(this.url) ? "&" : "?") + "_=" + new Date().getTime();
      }
    }
  }
  N.prototype.clone = function () {
    return new N(this, {
      body: this._bodyInit,
    });
  };
  function de(n) {
    var r = new FormData();
    return (
      n
        .trim()
        .split("&")
        .forEach(function (e) {
          if (e) {
            var t = e.split("="),
              s = t.shift().replace(/\+/g, " "),
              i = t.join("=").replace(/\+/g, " ");
            r.append(decodeURIComponent(s), decodeURIComponent(i));
          }
        }),
      r
    );
  }
  function fe(n) {
    var r = new m(),
      e = n.replace(/\r?\n[\t ]+/g, " ");
    return (
      e
        .split("\r")
        .map(function (t) {
          return t.indexOf(`
`) === 0
            ? t.substr(1, t.length)
            : t;
        })
        .forEach(function (t) {
          var s = t.split(":"),
            i = s.shift().trim();
          if (i) {
            var a = s.join(":").trim();
            r.append(i, a);
          }
        }),
      r
    );
  }
  x.call(N.prototype);
  function k(n, r) {
    if (!(this instanceof k))
      throw new TypeError(
        'Please use the "new" operator, this DOM object constructor cannot be called as a function.'
      );
    r || (r = {}),
      (this.type = "default"),
      (this.status = r.status === void 0 ? 200 : r.status),
      (this.ok = this.status >= 200 && this.status < 300),
      (this.statusText = r.statusText === void 0 ? "" : "" + r.statusText),
      (this.headers = new m(r.headers)),
      (this.url = r.url || ""),
      this._initBody(n);
  }
  x.call(k.prototype),
    (k.prototype.clone = function () {
      return new k(this._bodyInit, {
        status: this.status,
        statusText: this.statusText,
        headers: new m(this.headers),
        url: this.url,
      });
    }),
    (k.error = function () {
      var n = new k(null, {
        status: 0,
        statusText: "",
      });
      return (n.type = "error"), n;
    });
  var pe = [301, 302, 303, 307, 308];
  k.redirect = function (n, r) {
    if (pe.indexOf(r) === -1) throw new RangeError("Invalid status code");
    return new k(null, {
      status: r,
      headers: {
        location: n,
      },
    });
  };
  var v = y.DOMException;
  try {
    new v();
  } catch {
    (v = function (r, e) {
      (this.message = r), (this.name = e);
      var t = Error(r);
      this.stack = t.stack;
    }),
      (v.prototype = Object.create(Error.prototype)),
      (v.prototype.constructor = v);
  }
  function $(n, r) {
    return new Promise(function (e, t) {
      var s = new N(n, r);
      if (s.signal && s.signal.aborted)
        return t(new v("Aborted", "AbortError"));
      var i = new XMLHttpRequest();
      function a() {
        i.abort();
      }
      (i.onload = function () {
        var c = {
          status: i.status,
          statusText: i.statusText,
          headers: fe(i.getAllResponseHeaders() || ""),
        };
        c.url =
          "responseURL" in i ? i.responseURL : c.headers.get("X-Request-URL");
        var p = "response" in i ? i.response : i.responseText;
        setTimeout(function () {
          e(new k(p, c));
        }, 0);
      }),
        (i.onerror = function () {
          setTimeout(function () {
            t(new TypeError("Network request failed"));
          }, 0);
        }),
        (i.ontimeout = function () {
          setTimeout(function () {
            t(new TypeError("Network request failed"));
          }, 0);
        }),
        (i.onabort = function () {
          setTimeout(function () {
            t(new v("Aborted", "AbortError"));
          }, 0);
        });
      function o(c) {
        try {
          return c === "" && y.location.href ? y.location.href : c;
        } catch {
          return c;
        }
      }
      i.open(s.method, o(s.url), !0),
        s.credentials === "include"
          ? (i.withCredentials = !0)
          : s.credentials === "omit" && (i.withCredentials = !1),
        "responseType" in i &&
          (b.blob
            ? (i.responseType = "blob")
            : b.arrayBuffer &&
              s.headers.get("Content-Type") &&
              s.headers
                .get("Content-Type")
                .indexOf("application/octet-stream") !== -1 &&
              (i.responseType = "arraybuffer")),
        r && typeof r.headers == "object" && !(r.headers instanceof m)
          ? Object.getOwnPropertyNames(r.headers).forEach(function (c) {
              i.setRequestHeader(c, P(r.headers[c]));
            })
          : s.headers.forEach(function (c, p) {
              i.setRequestHeader(p, c);
            }),
        s.signal &&
          (s.signal.addEventListener("abort", a),
          (i.onreadystatechange = function () {
            i.readyState === 4 && s.signal.removeEventListener("abort", a);
          })),
        i.send(typeof s._bodyInit > "u" ? null : s._bodyInit);
    });
  }
  ($.polyfill = !0),
    y.fetch ||
      ((y.fetch = $), (y.Headers = m), (y.Request = N), (y.Response = k));
  var L = {},
    ye = {
      get exports() {
        return L;
      },
      set exports(n) {
        L = n;
      },
    },
    S = typeof Reflect == "object" ? Reflect : null,
    H =
      S && typeof S.apply == "function"
        ? S.apply
        : function (r, e, t) {
            return Function.prototype.apply.call(r, e, t);
          },
    M;
  S && typeof S.ownKeys == "function"
    ? (M = S.ownKeys)
    : Object.getOwnPropertySymbols
    ? (M = function (r) {
        return Object.getOwnPropertyNames(r).concat(
          Object.getOwnPropertySymbols(r)
        );
      })
    : (M = function (r) {
        return Object.getOwnPropertyNames(r);
      });
  function ge(n) {
    console && console.warn && console.warn(n);
  }
  var G =
    Number.isNaN ||
    function (r) {
      return r !== r;
    };
  function g() {
    g.init.call(this);
  }
  (ye.exports = g),
    (L.once = Ce),
    (g.EventEmitter = g),
    (g.prototype._events = void 0),
    (g.prototype._eventsCount = 0),
    (g.prototype._maxListeners = void 0);
  var K = 10;
  function O(n) {
    if (typeof n != "function")
      throw new TypeError(
        'The "listener" argument must be of type Function. Received type ' +
          typeof n
      );
  }
  Object.defineProperty(g, "defaultMaxListeners", {
    enumerable: !0,
    get: function () {
      return K;
    },
    set: function (n) {
      if (typeof n != "number" || n < 0 || G(n))
        throw new RangeError(
          'The value of "defaultMaxListeners" is out of range. It must be a non-negative number. Received ' +
            n +
            "."
        );
      K = n;
    },
  }),
    (g.init = function () {
      (this._events === void 0 ||
        this._events === Object.getPrototypeOf(this)._events) &&
        ((this._events = Object.create(null)), (this._eventsCount = 0)),
        (this._maxListeners = this._maxListeners || void 0);
    }),
    (g.prototype.setMaxListeners = function (r) {
      if (typeof r != "number" || r < 0 || G(r))
        throw new RangeError(
          'The value of "n" is out of range. It must be a non-negative number. Received ' +
            r +
            "."
        );
      return (this._maxListeners = r), this;
    });
  function z(n) {
    return n._maxListeners === void 0 ? g.defaultMaxListeners : n._maxListeners;
  }
  (g.prototype.getMaxListeners = function () {
    return z(this);
  }),
    (g.prototype.emit = function (r) {
      for (var e = [], t = 1; t < arguments.length; t++) e.push(arguments[t]);
      var s = r === "error",
        i = this._events;
      if (i !== void 0) s = s && i.error === void 0;
      else if (!s) return !1;
      if (s) {
        var a;
        if ((e.length > 0 && (a = e[0]), a instanceof Error)) throw a;
        var o = new Error(
          "Unhandled error." + (a ? " (" + a.message + ")" : "")
        );
        throw ((o.context = a), o);
      }
      var c = i[r];
      if (c === void 0) return !1;
      if (typeof c == "function") H(c, this, e);
      else
        for (var p = c.length, f = Y(c, p), t = 0; t < p; ++t) H(f[t], this, e);
      return !0;
    });
  function V(n, r, e, t) {
    var s, i, a;
    if (
      (O(e),
      (i = n._events),
      i === void 0
        ? ((i = n._events = Object.create(null)), (n._eventsCount = 0))
        : (i.newListener !== void 0 &&
            (n.emit("newListener", r, e.listener ? e.listener : e),
            (i = n._events)),
          (a = i[r])),
      a === void 0)
    )
      (a = i[r] = e), ++n._eventsCount;
    else if (
      (typeof a == "function"
        ? (a = i[r] = t ? [e, a] : [a, e])
        : t
        ? a.unshift(e)
        : a.push(e),
      (s = z(n)),
      s > 0 && a.length > s && !a.warned)
    ) {
      a.warned = !0;
      var o = new Error(
        "Possible EventEmitter memory leak detected. " +
          a.length +
          " " +
          String(r) +
          " listeners added. Use emitter.setMaxListeners() to increase limit"
      );
      (o.name = "MaxListenersExceededWarning"),
        (o.emitter = n),
        (o.type = r),
        (o.count = a.length),
        ge(o);
    }
    return n;
  }
  (g.prototype.addListener = function (r, e) {
    return V(this, r, e, !1);
  }),
    (g.prototype.on = g.prototype.addListener),
    (g.prototype.prependListener = function (r, e) {
      return V(this, r, e, !0);
    });
  function be() {
    if (!this.fired)
      return (
        this.target.removeListener(this.type, this.wrapFn),
        (this.fired = !0),
        arguments.length === 0
          ? this.listener.call(this.target)
          : this.listener.apply(this.target, arguments)
      );
  }
  function J(n, r, e) {
    var t = {
        fired: !1,
        wrapFn: void 0,
        target: n,
        type: r,
        listener: e,
      },
      s = be.bind(t);
    return (s.listener = e), (t.wrapFn = s), s;
  }
  (g.prototype.once = function (r, e) {
    return O(e), this.on(r, J(this, r, e)), this;
  }),
    (g.prototype.prependOnceListener = function (r, e) {
      return O(e), this.prependListener(r, J(this, r, e)), this;
    }),
    (g.prototype.removeListener = function (r, e) {
      var t, s, i, a, o;
      if ((O(e), (s = this._events), s === void 0)) return this;
      if (((t = s[r]), t === void 0)) return this;
      if (t === e || t.listener === e)
        --this._eventsCount === 0
          ? (this._events = Object.create(null))
          : (delete s[r],
            s.removeListener &&
              this.emit("removeListener", r, t.listener || e));
      else if (typeof t != "function") {
        for (i = -1, a = t.length - 1; a >= 0; a--)
          if (t[a] === e || t[a].listener === e) {
            (o = t[a].listener), (i = a);
            break;
          }
        if (i < 0) return this;
        i === 0 ? t.shift() : me(t, i),
          t.length === 1 && (s[r] = t[0]),
          s.removeListener !== void 0 && this.emit("removeListener", r, o || e);
      }
      return this;
    }),
    (g.prototype.off = g.prototype.removeListener),
    (g.prototype.removeAllListeners = function (r) {
      var e, t, s;
      if (((t = this._events), t === void 0)) return this;
      if (t.removeListener === void 0)
        return (
          arguments.length === 0
            ? ((this._events = Object.create(null)), (this._eventsCount = 0))
            : t[r] !== void 0 &&
              (--this._eventsCount === 0
                ? (this._events = Object.create(null))
                : delete t[r]),
          this
        );
      if (arguments.length === 0) {
        var i = Object.keys(t),
          a;
        for (s = 0; s < i.length; ++s)
          (a = i[s]), a !== "removeListener" && this.removeAllListeners(a);
        return (
          this.removeAllListeners("removeListener"),
          (this._events = Object.create(null)),
          (this._eventsCount = 0),
          this
        );
      }
      if (((e = t[r]), typeof e == "function")) this.removeListener(r, e);
      else if (e !== void 0)
        for (s = e.length - 1; s >= 0; s--) this.removeListener(r, e[s]);
      return this;
    });
  function X(n, r, e) {
    var t = n._events;
    if (t === void 0) return [];
    var s = t[r];
    return s === void 0
      ? []
      : typeof s == "function"
      ? e
        ? [s.listener || s]
        : [s]
      : e
      ? Ae(s)
      : Y(s, s.length);
  }
  (g.prototype.listeners = function (r) {
    return X(this, r, !0);
  }),
    (g.prototype.rawListeners = function (r) {
      return X(this, r, !1);
    }),
    (g.listenerCount = function (n, r) {
      return typeof n.listenerCount == "function"
        ? n.listenerCount(r)
        : Z.call(n, r);
    }),
    (g.prototype.listenerCount = Z);
  function Z(n) {
    var r = this._events;
    if (r !== void 0) {
      var e = r[n];
      if (typeof e == "function") return 1;
      if (e !== void 0) return e.length;
    }
    return 0;
  }
  g.prototype.eventNames = function () {
    return this._eventsCount > 0 ? M(this._events) : [];
  };
  function Y(n, r) {
    for (var e = new Array(r), t = 0; t < r; ++t) e[t] = n[t];
    return e;
  }
  function me(n, r) {
    for (; r + 1 < n.length; r++) n[r] = n[r + 1];
    n.pop();
  }
  function Ae(n) {
    for (var r = new Array(n.length), e = 0; e < r.length; ++e)
      r[e] = n[e].listener || n[e];
    return r;
  }
  function Ce(n, r) {
    return new Promise(function (e, t) {
      function s(a) {
        n.removeListener(r, i), t(a);
      }
      function i() {
        typeof n.removeListener == "function" && n.removeListener("error", s),
          e([].slice.call(arguments));
      }
      Q(n, r, i, {
        once: !0,
      }),
        r !== "error" &&
          we(n, s, {
            once: !0,
          });
    });
  }
  function we(n, r, e) {
    typeof n.on == "function" && Q(n, "error", r, e);
  }
  function Q(n, r, e, t) {
    if (typeof n.on == "function") t.once ? n.once(r, e) : n.on(r, e);
    else if (typeof n.addEventListener == "function")
      n.addEventListener(r, function s(i) {
        t.once && n.removeEventListener(r, s), e(i);
      });
    else
      throw new TypeError(
        'The "emitter" argument must be of type EventEmitter. Received type ' +
          typeof n
      );
  }
  FileReader.prototype.readAsArrayBuffer = function (n) {
    if (this.readyState === this.LOADING) throw new Error("InvalidStateError");
    this._setReadyState(this.LOADING),
      (this._result = null),
      (this._error = null);
    const r = new FileReader();
    (r.onloadend = () => {
      const e = Te(r.result.substr(37)),
        t = new ArrayBuffer(e.length);
      new Uint8Array(t).set(Array.from(e).map((i) => i.charCodeAt(0))),
        (this._result = t),
        this._setReadyState(this.DONE);
    }),
      r.readAsDataURL(n);
  };
  const Ee =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
    Te = (n = "") => {
      const r = n.replace(/=+$/, "");
      let e = "";
      if (r.length % 4 == 1)
        throw new Error(
          "'atob' failed: The string to be decoded is not correctly encoded."
        );
      for (
        let t = 0, s = 0, i, a = 0;
        (i = r.charAt(a++));
        ~i && ((s = t % 4 ? s * 64 + i : i), t++ % 4)
          ? (e += String.fromCharCode(255 & (s >> ((-2 * t) & 6))))
          : 0
      )
        i = Ee.indexOf(i);
      return e;
    };
  class h {
    constructor(r) {
      w(this, "appId", "");
      if (!r) throw new Error("TalkPlus HttpClient requires appId");
      this.appId = r;
    }
    static New(r) {
      if (!r) throw new Error("TalkPlus HttpClient requires appId");
      return new h(r);
    }
    urlWithQueries(r, e = {}) {
      let t = "";
      const s = Object.keys(e);
      for (let i = 0; i < s.length; i++) {
        i === 0 ? (t += "?") : (t += "&");
        const a = s[i];
        a &&
          (Array.isArray(e[a])
            ? e[a].forEach((o, c) => {
                (t += `${a}=${o}`), c !== e.length - 1 && (t += "&");
              })
            : (t += `${a}=${e[a]}`));
      }
      return r + t;
    }
    buildHeader({ contentType: r, sessionToken: e }) {
      return {
        "app-id": this.appId,
        "content-type": r || "",
        Authorization: e ? `Bearer ${e}` : "",
      };
    }
    get({ sessionToken: r, url: e, queries: t }) {
      return this.makeRequest({
        sessionToken: r,
        url: this.urlWithQueries(e, t),
        method: "GET",
      });
    }
    put({ sessionToken: r, url: e, jsonData: t, formData: s }) {
      return this.makeRequest({
        sessionToken: r,
        url: e,
        method: "PUT",
        jsonData: t,
        formData: s,
      });
    }
    post({ url: r, sessionToken: e, jsonData: t, formData: s }) {
      return this.makeRequest({
        url: r,
        method: "POST",
        sessionToken: e,
        jsonData: t,
        formData: s,
      });
    }
    delete({ sessionToken: r, url: e, jsonData: t }) {
      return this.makeRequest({
        sessionToken: r,
        url: e,
        method: "DELETE",
        jsonData: t,
      });
    }
    makeRequest({
      sessionToken: r,
      url: e,
      method: t,
      jsonData: s,
      formData: i,
    }) {
      const a = {
        method: t,
      };
      if ((s && !i && (a.body = JSON.stringify(s)), i)) {
        (a.headers = this.buildHeader({
          sessionToken: r,
        })),
          delete a.headers["content-type"];
        const c = new FormData();
        Object.keys(i).forEach((p) => {
          p === "data"
            ? c.append("data", JSON.stringify(i.data))
            : c.append(p, i[p]);
        }),
          (a.body = c);
      } else
        a.headers = this.buildHeader({
          contentType: "application/json",
          sessionToken: r,
        });
      const o = window.fetch(e, a);
      return new Promise((c, p) => {
        o.then((f) =>
          f.status === 500
            ? {
                success: !1,
                data: f.json(),
              }
            : f.status !== 200
            ? {
                success: !1,
                data: new Error(`request failed. status: ${f.status}`),
              }
            : {
                success: !0,
                data: f.json(),
              }
        )
          .then(async (f) => {
            if (f.success) c(f.data);
            else {
              const T =
                f.data && f.data.then && typeof f.data.then == "function";
              p(T ? await f.data : f.data);
            }
          })
          .catch((f) => {
            console.error(f), p(f);
          });
      });
    }
  }
  const ke = "https://api.talkplus.io",
    Ne = "wss://ws.api.talkplus.io",
    u = "v1.4",
    ee = "0.1.0",
    E = {
      LOGIN_TOKEN: `%host%/${u}/users/login/token`,
      LOGIN_ANONYMOUS: `%host%/${u}/users/login/anonymous`,
      UPDATE_USER: `%host%/${u}/users/update`,
      DELETE_USER: `%host%/${u}/users/delete`,
      REGISTER_FCM_TOKEN: `%host%/${u}/users/register/fcm`,
      ENABLE_PUSH_NOTIFICATION: `%host%/${u}/users/settings/push/enable`,
      DISABLE_PUSH_NOTIFICATION: `%host%/${u}/users/settings/push/disable`,
      NOTIFICATIONS: `%host%/${u}/users/notifications`,
      WEBSOCKET_NOTIFICATIONS: `%host%/${u}/users/ws/notifications`,
      LOGOUT: `%host%/${u}/users/logout`,
      BLOCKED: `%host%/${u}/users/blocked`,
      BLOCK: `%host%/${u}/users/block`,
      UNBLOCK: `%host%/${u}/users/unblock`,
    },
    d = {
      GET_LIST: `%host%/${u}/channels`,
      CREATE: `%host%/${u}/channels/create`,
      GET: `%host%/${u}/channels/%s`,
      UPDATE: `%host%/${u}/channels/%s`,
      DELETE: `%host%/${u}/channels/%s`,
      MEMBERS: `%host%/${u}/channels/%s/members`,
      ADD_MEMBERS: `%host%/${u}/channels/%s/members/add`,
      REMOVE_MEMBERS: `%host%/${u}/channels/%s/members/remove`,
      BANNED_USERS: `%host%/${u}/channels/%s/members/banned`,
      BAN_MEMBERS: `%host%/${u}/channels/%s/members/ban`,
      UNBAN_MEMBERS: `%host%/${u}/channels/%s/members/unban`,
      MUTED_MEMBERS: `%host%/${u}/channels/%s/members/muted`,
      MUTE_MEMBERS: `%host%/${u}/channels/%s/members/mute`,
      UNMUTE_MEMBERS: `%host%/${u}/channels/%s/members/unmute`,
      CHANNEL_PRIVATE_DATA: `%host%/${u}/channels/%s/privateData`,
      CHANNEL_PRIVATE_TAG: `%host%/${u}/channels/%s/privateTag`,
      CHANNEL_MEMBER: `%host%/${u}/channels/%s/members/%s`,
      CHANNEL_MEMBER_INFO: `%host%/${u}/channels/%s/memberInfo`,
      ENABLE_CHANNEL_PUSH_NOTI: `%host%/${u}/channels/%s/push/enable`,
      DISABLE_CHANNEL_PUSH_NOTI: `%host%/${u}/channels/%s/push/disable`,
      CHANNEL_PUSH_NOTI_SETTINGS: `%host%/${u}/channels/%s/push/settings`,
      MARK_READ: `%host%/${u}/channels/%s/markread`,
      MARK_READ_ALL: `%host%/${u}/channels/markread/all`,
      GET_MESSAGES: `%host%/${u}/channels/%s/messages`,
      GET_FILE_MESSAGES: `%host%/${u}/channels/%s/messages/files`,
      SEND_MESSAGE: `%host%/${u}/channels/%s/messages/send`,
      DELETE_MESSAGE: `%host%/${u}/channels/%s/messages/%s`,
      MESSAGE_REACTIONS: `%host%/${u}/channels/%s/messages/%s/reactions`,
      FREEZE: `%host%/${u}/channels/%s/freeze`,
      UNFREEZE: `%host%/${u}/channels/%s/unfreeze`,
      HIDE: `%host%/${u}/channels/%s/hide`,
      SHOW: `%host%/${u}/channels/%s/show`,
      HIDE_ALL: `%host%/${u}/channels/hide/all`,
      JOIN: `%host%/${u}/channels/%s/join`,
      JOIN_INVITATION: `%host%/${u}/channels/%s/join/invitation`,
      LEAVE: `%host%/${u}/channels/%s/leave`,
      UNREAD_COUNT: `%host%/${u}/channels/unread/count`,
      TRANSFER_OWNERSHIP: `%host%/${u}/channels/%s/transfer/ownership`,
    };
  function l(n) {
    return n.replace("%host%", ke);
  }
  function ve(n) {
    return n.replace("%host%", Ne);
  }
  class W extends L.EventEmitter {
    constructor() {
      super(...arguments);
      w(this, "userId", "");
      w(this, "sessionId", "");
      w(this, "sessionToken", "");
    }
    clearSession() {
      (this.userId = ""), (this.sessionId = ""), (this.sessionToken = "");
    }
    updateSession({ userId: e, sessionId: t, sessionToken: s }) {
      (this.userId = e), (this.sessionId = t), (this.sessionToken = s);
    }
    getSessionToken() {
      return this.sessionToken;
    }
    isLoggedIn() {
      return !!this.sessionToken;
    }
    generateDeviceId() {
      return `web::${navigator.userAgent}||${new Date().getTime()}`;
    }
    wrapWithCallback(e, t, s) {
      const i = e.bind(this),
        a = new Promise((o, c) => {
          try {
            return Array.isArray(t) ? o(i(...t)) : o(i(t));
          } catch (p) {
            return c(p);
          }
        });
      return s && typeof s == "function"
        ? a
            .then((o) => s(null, o))
            .catch(async (o) =>
              o && o.then && typeof o.then == "function" ? s(await o) : s(o)
            )
        : a;
    }
    wrapWithCallbackLoginRequired(e, t, s) {
      if (!this.isLoggedIn()) {
        const i = new Promise((a, o) =>
          o(new Error("talkplus client: not logged in!"))
        );
        if (s && typeof s == "function") {
          i.then(() => s(null)).catch((a) => {
            s(a);
          });
          return;
        }
        return i;
      }
      return this.wrapWithCallback(e, t, s);
    }
  }
  class Se extends W {
    constructor(e) {
      super();
      w(this, "appId", "");
      if (!e)
        throw new Error("TalkPlus Auth requires appId for initialization");
      this.appId = e;
    }
    async loginWithTokenAsync(e, t, s) {
      const i = {
        deviceId: `web_${u}_loginWithToken_${e}`,
        deviceType: "web",
        sdkVersion: ee,
        sessionRefreshTargets: s,
        userId: t.userId,
        loginToken: t.loginToken,
        username: t.username,
        profileImageUrl: t.profileImageUrl,
        data: t.data,
        file: t.file,
      };
      let a;
      return (
        i.file
          ? (a = await h.New(this.appId).post({
              url: l(E.LOGIN_TOKEN),
              formData: i,
            }))
          : (a = await h.New(this.appId).post({
              url: l(E.LOGIN_TOKEN),
              jsonData: i,
            })),
        s.forEach((o) => {
          o.updateSession({
            userId: a.user.id,
            sessionId: a.sessionId,
            sessionToken: a.sessionToken,
          });
        }),
        a
      );
    }
    loginWithToken(e, t, s, i) {
      return this.wrapWithCallback(this.loginWithTokenAsync, [e, t, s], i);
    }
    async loginAnonymousAsync(e, t, s) {
      const i = {
        deviceId: `web_${u}_loginAnonymous_${e}`,
        deviceType: "web",
        sdkVersion: ee,
        sessionRefreshTargets: s,
        userId: t.userId,
        username: t.username,
        profileImageUrl: t.profileImageUrl,
        data: t.data,
        file: t.file,
      };
      let a;
      return (
        i.file
          ? (a = await h.New(this.appId).post({
              url: l(E.LOGIN_ANONYMOUS),
              formData: i,
            }))
          : (a = await h.New(this.appId).post({
              url: l(E.LOGIN_ANONYMOUS),
              jsonData: i,
            })),
        s.forEach((o) => {
          o.updateSession({
            userId: a.user.id,
            sessionId: a.sessionId,
            sessionToken: a.sessionToken,
          });
        }),
        a
      );
    }
    loginAnonymous(e, t, s, i) {
      return this.wrapWithCallback(this.loginAnonymousAsync, [e, t, s], i);
    }
    async updateUserAsync(e) {
      return e.file
        ? h.New(this.appId).put({
            sessionToken: this.getSessionToken(),
            url: l(E.UPDATE_USER),
            formData: e,
          })
        : h.New(this.appId).put({
            sessionToken: this.getSessionToken(),
            url: l(E.UPDATE_USER),
            jsonData: e,
          });
    }
    updateUser(e, t) {
      return this.wrapWithCallbackLoginRequired(this.updateUserAsync, e, t);
    }
    async deleteUserAsync() {
      const e = await h.New(this.appId).delete({
        sessionToken: this.getSessionToken(),
        url: l(E.DELETE_USER),
      });
      return this.clearSession(), e;
    }
    deleteUser(e) {
      return this.wrapWithCallbackLoginRequired(this.deleteUserAsync, {}, e);
    }
    async enablePushNotificationAsync() {
      return await h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(E.ENABLE_PUSH_NOTIFICATION),
      });
    }
    enablePushNotification(e) {
      return this.wrapWithCallbackLoginRequired(
        this.enablePushNotificationAsync,
        {},
        e
      );
    }
    async registerFcmTokenAsync({ fcmToken: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(E.REGISTER_FCM_TOKEN),
        jsonData: {
          fcmToken: e,
        },
      });
    }
    registerFcmToken(e, t) {
      return this.wrapWithCallbackLoginRequired(
        this.registerFcmTokenAsync,
        e,
        t
      );
    }
    async disablePushNotificationAsync() {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(E.DISABLE_PUSH_NOTIFICATION),
      });
    }
    disablePushNotification(e) {
      return this.wrapWithCallbackLoginRequired(
        this.disablePushNotificationAsync,
        {},
        e
      );
    }
    async logoutAsync() {
      if (!this.isLoggedIn()) return this.clearSession(), {};
      const e = await h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(E.LOGOUT),
      });
      return this.clearSession(), e;
    }
    logout(e) {
      return this.wrapWithCallback(this.logoutAsync, [], e);
    }
    async getBlockedUsersAsync({ lastUserId: e }) {
      return await h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: l(E.BLOCKED),
        queries: e
          ? {
              lastUserId: e,
            }
          : {},
      });
    }
    getBlockedUsers(e, t) {
      return this.wrapWithCallbackLoginRequired(
        this.getBlockedUsersAsync,
        e,
        t
      );
    }
    async blockUserAsync({ userId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(E.BLOCK),
        jsonData: {
          userId: e,
        },
      });
    }
    blockUser(e, t) {
      return this.wrapWithCallbackLoginRequired(this.blockUserAsync, e, t);
    }
    async unblockUserAsync({ userId: e }) {
      return await h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(E.UNBLOCK),
        jsonData: {
          userId: e,
        },
      });
    }
    unblockUser(e, t) {
      return this.wrapWithCallbackLoginRequired(this.unblockUserAsync, e, t);
    }
    async getNotificationAsync(e) {
      const t = await h.New(this.appId).get({
          sessionToken: this.getSessionToken(),
          url: e,
        }),
        { notification: s } = t;
      if (["message", "messageDeleted"].includes(s.type))
        return {
          type: s.type,
          data: {
            channel: s.data.channel,
            message: s.data.message,
          },
        };
      if (["channelAdded", "channelChanged", "channelRemoved"].includes(s.type))
        return {
          type: s.type,
          data: {
            channel: s.data.channel,
          },
        };
      if (["memberAdded", "memberLeft"].includes(s.type))
        return {
          type: s.type,
          data: {
            channel: s.data.channel,
            users: s.data.users,
          },
        };
      throw new Error(`Unsupported TalkPlus notification type: ${s.type}`);
    }
    getNotification(e, t) {
      return this.wrapWithCallback(this.getNotificationAsync, e, t);
    }
  }
  var I = ((n) => (
      (n.Public = "public"), (n.Hidden = "hidden"), (n.Default = "default"), n
    ))(I || {}),
    R = ((n) => ((n.Name = "name"), n))(R || {});
  class Ie extends W {
    constructor(e) {
      super();
      w(this, "appId", "");
      if (!e)
        throw new Error("TalkPlus Channel requires appId for initialization");
      this.appId = e;
    }
    async getListAsync({
      type: e,
      lastChannelId: t,
      filter: s,
      query: i,
      members: a,
      limit: o,
      includeOwnReactions: c,
      category: p,
      subcategory: f,
      privateTag: T,
    }) {
      const C = t
        ? {
            lastChannelId: t,
          }
        : {};
      return (
        !e || !Object.values(I).includes(e)
          ? (C.type = I.Default)
          : (C.type = e),
        !s || !Object.values(R).includes(s)
          ? (C.filter = R.Name)
          : (C.filter = s),
        i && (C.query = i),
        p && (C.category = p),
        f && (C.subcategory = f),
        T && (C.privateTag = T),
        a && Array.isArray(a) && a.length && (C.members = a),
        o && (C.limit = o),
        c && (C.includeOwnReactions = "true"),
        h.New(this.appId).get({
          sessionToken: this.getSessionToken(),
          url: l(d.GET_LIST),
          queries: C,
        })
      );
    }
    async getList(e, t) {
      return this.wrapWithCallbackLoginRequired(this.getListAsync, e, t);
    }
    async createAsync({
      channelId: e,
      name: t,
      type: s,
      invitationCode: i,
      members: a,
      reuseChannel: o,
      imageUrl: c,
      maxMemberCount: p,
      hideMessagesBeforeJoin: f,
      data: T,
      category: C,
      subcategory: j,
    }) {
      const U = {
        channelId: e,
        name: t,
        type: s,
        invitationCode: i,
        members: a,
        reuseChannel: o,
        imageUrl: c,
        maxMemberCount: p,
        hideMessagesBeforeJoin: f,
        category: C,
        subcategory: j,
      };
      return (
        T && (U.data = T),
        h.New(this.appId).post({
          sessionToken: this.getSessionToken(),
          url: l(d.CREATE),
          jsonData: U,
        })
      );
    }
    create(
      {
        channelId: e,
        name: t,
        type: s,
        invitationCode: i,
        members: a,
        reuseChannel: o,
        imageUrl: c,
        maxMemberCount: p,
        hideMessagesBeforeJoin: f,
        data: T,
        category: C,
        subcategory: j,
      },
      U
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.createAsync,
        {
          channelId: e,
          name: t,
          type: s,
          invitationCode: i,
          members: a,
          reuseChannel: o,
          imageUrl: c,
          maxMemberCount: p,
          hideMessagesBeforeJoin: f,
          data: T,
          category: C,
          subcategory: j,
        },
        U
      );
    }
    getAsync({ channelId: e, includeOwnReactions: t }) {
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.GET), e),
        queries: {
          includeOwnReactions: t ? "true" : !1,
        },
      });
    }
    async get({ channelId: e, includeOwnReactions: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.getAsync,
        {
          channelId: e,
          includeOwnReactions: t,
        },
        s
      );
    }
    async updateAsync({
      channelId: e,
      name: t,
      invitationCode: s,
      imageUrl: i,
      maxMemberCount: a,
      hideMessagesBeforeJoin: o,
      data: c,
      category: p,
      subcategory: f,
    }) {
      const T = {
        channelId: e,
        name: t,
        invitationCode: s,
        imageUrl: i,
        maxMemberCount: a,
        hideMessagesBeforeJoin: o,
        category: p,
        subcategory: f,
      };
      return (
        c && (T.data = c),
        h.New(this.appId).put({
          sessionToken: this.getSessionToken(),
          url: this.sprintf(l(d.UPDATE), e),
          jsonData: T,
        })
      );
    }
    async update(
      {
        channelId: e,
        name: t,
        invitationCode: s,
        imageUrl: i,
        maxMemberCount: a,
        hideMessagesBeforeJoin: o,
        data: c,
        category: p,
        subcategory: f,
      },
      T
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.updateAsync,
        {
          channelId: e,
          name: t,
          invitationCode: s,
          imageUrl: i,
          maxMemberCount: a,
          hideMessagesBeforeJoin: o,
          data: c,
          category: p,
          subcategory: f,
        },
        T
      );
    }
    async deleteAsync({ channelId: e }) {
      return h.New(this.appId).delete({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.DELETE), e),
      });
    }
    async delete({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.deleteAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async getChannelMembersAsync({ channelId: e, lastUserId: t }) {
      const s = t
        ? {
            lastUserId: t,
          }
        : {};
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MEMBERS), e),
        queries: s,
      });
    }
    async getChannelMembers({ channelId: e, lastUserId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.getChannelMembersAsync,
        {
          channelId: e,
          lastUserId: t,
        },
        s
      );
    }
    async getChannelMemberAsync({ channelId: e, userId: t }) {
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.CHANNEL_MEMBER), e, t),
      });
    }
    async getChannelMember({ channelId: e, userId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.getChannelMemberAsync,
        {
          channelId: e,
          userId: t,
        },
        s
      );
    }
    async addChannelMembersAsync({ channelId: e, members: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.ADD_MEMBERS), e),
        jsonData: {
          members: t,
        },
      });
    }
    async addChannelMembers({ channelId: e, members: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.addChannelMembersAsync,
        {
          channelId: e,
          members: t,
        },
        s
      );
    }
    async removeChannelMembersAsync({ channelId: e, members: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.REMOVE_MEMBERS), e),
        jsonData: {
          members: t,
        },
      });
    }
    async removeChannelMembers({ channelId: e, members: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.removeChannelMembersAsync,
        {
          channelId: e,
          members: t,
        },
        s
      );
    }
    async getBannedUsersFromChannelAsync({ channelId: e, lastUserId: t }) {
      const s = t
        ? {
            lastUserId: t,
          }
        : {};
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.BANNED_USERS), e),
        queries: s,
      });
    }
    async getBannedUsersFromChannel({ channelId: e, lastUserId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.getBannedUsersFromChannelAsync,
        {
          channelId: e,
          lastUserId: t,
        },
        s
      );
    }
    async banUsersFromChannelAsync({ channelId: e, members: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.BAN_MEMBERS), e),
        jsonData: {
          members: t,
        },
      });
    }
    async banUsersFromChannel({ channelId: e, members: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.banUsersFromChannelAsync,
        {
          channelId: e,
          members: t,
        },
        s
      );
    }
    async unbanUsersFromChannelAsync({ channelId: e, members: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.UNBAN_MEMBERS), e),
        jsonData: {
          members: t,
        },
      });
    }
    async unbanUsersFromChannel({ channelId: e, members: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.unbanUsersFromChannelAsync,
        {
          channelId: e,
          members: t,
        },
        s
      );
    }
    async getMutedChannelMembersAsync({ channelId: e, lastUserId: t }) {
      const s = t
        ? {
            lastUserId: t,
          }
        : {};
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MUTED_MEMBERS), e),
        queries: s,
      });
    }
    async getMutedChannelMembers({ channelId: e, lastUserId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.getMutedChannelMembersAsync,
        {
          channelId: e,
          lastUserId: t,
        },
        s
      );
    }
    async muteChannelMembersAsync({ channelId: e, members: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MUTE_MEMBERS), e),
        jsonData: {
          members: t,
        },
      });
    }
    async muteChannelMembers({ channelId: e, members: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.muteChannelMembersAsync,
        {
          channelId: e,
          members: t,
        },
        s
      );
    }
    async unmuteChannelMembersAsync({ channelId: e, members: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.UNMUTE_MEMBERS), e),
        jsonData: {
          members: t,
        },
      });
    }
    async unmuteChannelMembers({ channelId: e, members: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.unmuteChannelMembersAsync,
        {
          channelId: e,
          members: t,
        },
        s
      );
    }
    async enablePushNotiAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.ENABLE_CHANNEL_PUSH_NOTI), e),
      });
    }
    async enablePushNoti({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.enablePushNotiAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async disablePushNotiAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.DISABLE_CHANNEL_PUSH_NOTI), e),
      });
    }
    async disablePushNoti({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.disablePushNotiAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async getChannelPushNotificationSettingsAsync({ channelId: e }) {
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.CHANNEL_PUSH_NOTI_SETTINGS), e),
      });
    }
    async getChannelPushNotificationSettings({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.getChannelPushNotificationSettingsAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async updateChannelPushNotificationSettingsAsync({
      channelId: e,
      aosSound: t,
      iosSound: s,
    }) {
      const i = {
        channelId: e,
      };
      return (
        t !== null && (i.pushNotificationSoundAos = t),
        s !== null && (i.pushNotificationSoundIos = s),
        h.New(this.appId).post({
          sessionToken: this.getSessionToken(),
          url: this.sprintf(l(d.CHANNEL_PUSH_NOTI_SETTINGS), e),
          jsonData: i,
        })
      );
    }
    async updateChannelPushNotificationSettings(
      { channelId: e, aosSound: t, iosSound: s },
      i
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.updateChannelPushNotificationSettingsAsync,
        {
          channelId: e,
          aosSound: t,
          iosSound: s,
        },
        i
      );
    }
    async markChannelAsReadAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MARK_READ), e),
      });
    }
    async markChannelAsRead({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.markChannelAsReadAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async markAllChannelsAsReadAsync() {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(d.MARK_READ_ALL),
      });
    }
    async markAllChannelsAsRead(e) {
      return this.wrapWithCallbackLoginRequired(
        this.markAllChannelsAsReadAsync,
        null,
        e
      );
    }
    async getMessagesAsync({
      channelId: e,
      lastMessageId: t,
      limit: s,
      order: i,
      includeOwnReactions: a,
    }) {
      const o = t
        ? {
            channelId: e,
            lastMessageId: t,
          }
        : {
            channelId: e,
          };
      return (
        s && (o.limit = s),
        i && (o.order = i),
        a && (o.includeOwnReactions = a),
        h.New(this.appId).get({
          sessionToken: this.getSessionToken(),
          url: this.sprintf(l(d.GET_MESSAGES), e),
          queries: o,
        })
      );
    }
    async getMessages(
      {
        channelId: e,
        lastMessageId: t,
        limit: s,
        order: i,
        includeOwnReactions: a,
      },
      o
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.getMessagesAsync,
        {
          channelId: e,
          lastMessageId: t,
          limit: s,
          order: i,
          includeOwnReactions: a,
        },
        o
      );
    }
    async getFileMessagesAsync({
      channelId: e,
      lastMessageId: t,
      limit: s,
      order: i,
      includeOwnReactions: a,
    }) {
      const o = t
        ? {
            lastMessageId: t,
            channelId: e,
          }
        : {
            channelId: e,
          };
      return (
        s && (o.limit = s),
        i && (o.order = i),
        a && (o.includeOwnReactions = a),
        h.New(this.appId).get({
          sessionToken: this.getSessionToken(),
          url: this.sprintf(l(d.GET_FILE_MESSAGES), e),
          queries: o,
        })
      );
    }
    async getFileMessages(
      {
        channelId: e,
        lastMessageId: t,
        limit: s,
        order: i,
        includeOwnReactions: a,
      },
      o
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.getFileMessagesAsync,
        {
          channelId: e,
          lastMessageId: t,
          limit: s,
          order: i,
          includeOwnReactions: a,
        },
        o
      );
    }
    async sendMessageAsync({
      channelId: e,
      type: t,
      text: s,
      data: i,
      mentions: a,
      file: o,
      parentMessageId: c,
    }) {
      const f = {
        channelId: e,
        type: t,
        text: s || "",
      };
      return (
        i && (f.data = i),
        a && (f.mentions = a),
        o
          ? ((f.file = o),
            h.New(this.appId).post({
              sessionToken: this.getSessionToken(),
              url: this.sprintf(l(d.SEND_MESSAGE), e),
              formData: f,
            }))
          : (c && (f.parentMessageId = c),
            h.New(this.appId).post({
              sessionToken: this.getSessionToken(),
              url: this.sprintf(l(d.SEND_MESSAGE), e),
              jsonData: f,
            }))
      );
    }
    async sendMessage(
      {
        channelId: e,
        type: t,
        text: s,
        data: i,
        mentions: a,
        file: o,
        parentMessageId: c,
      },
      p
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.sendMessageAsync,
        {
          channelId: e,
          type: t,
          text: s,
          data: i,
          mentions: a,
          file: o,
          parentMessageId: c,
        },
        p
      );
    }
    async deleteMessageAsync({ channelId: e, messageId: t }) {
      return h.New(this.appId).delete({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.DELETE_MESSAGE), e, t),
      });
    }
    async deleteMessage({ channelId: e, messageId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.deleteMessageAsync,
        {
          channelId: e,
          messageId: t,
        },
        s
      );
    }
    async getMessageReactionsAsync({ channelId: e, messageId: t }) {
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MESSAGE_REACTIONS), e, t),
      });
    }
    async getMessageReactions({ channelId: e, messageId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.getMessageReactionsAsync,
        {
          channelId: e,
          messageId: t,
        },
        s
      );
    }
    async addMessageReactionAsync({ channelId: e, messageId: t, reaction: s }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MESSAGE_REACTIONS), e, t),
        jsonData: {
          reaction: s,
        },
      });
    }
    async addMessageReaction({ channelId: e, messageId: t, reaction: s }, i) {
      return this.wrapWithCallbackLoginRequired(
        this.addMessageReactionAsync,
        {
          channelId: e,
          messageId: t,
          reaction: s,
        },
        i
      );
    }
    async removeMessageReactionAsync({
      channelId: e,
      messageId: t,
      reaction: s,
    }) {
      return h.New(this.appId).delete({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.MESSAGE_REACTIONS), e, t),
        jsonData: {
          reaction: s,
        },
      });
    }
    async removeMessageReaction(
      { channelId: e, messageId: t, reaction: s },
      i
    ) {
      return this.wrapWithCallbackLoginRequired(
        this.removeMessageReactionAsync,
        {
          channelId: e,
          messageId: t,
          reaction: s,
        },
        i
      );
    }
    async updateChannelPrivateTagAsync({ channelId: e, privateTag: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.CHANNEL_PRIVATE_TAG), e),
        jsonData: {
          privateTag: t,
        },
      });
    }
    async updateChannelPrivateTag({ channelId: e, privateTag: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.updateChannelPrivateTagAsync,
        {
          channelId: e,
          privateTag: t,
        },
        s
      );
    }
    async updateChannelPrivateDataAsync({ channelId: e, privateData: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.CHANNEL_PRIVATE_DATA), e),
        jsonData: {
          privateData: t,
        },
      });
    }
    async updateChannelPrivateData({ channelId: e, privateData: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.updateChannelPrivateDataAsync,
        {
          channelId: e,
          privateData: t,
        },
        s
      );
    }
    async updateChannelMemberInfoAsync({ channelId: e, memberInfo: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.CHANNEL_MEMBER_INFO), e),
        jsonData: {
          memberInfo: t,
        },
      });
    }
    async updateChannelMemberInfo({ channelId: e, memberInfo: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.updateChannelMemberInfoAsync,
        {
          channelId: e,
          memberInfo: t,
        },
        s
      );
    }
    async freezeChannelAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.FREEZE), e),
      });
    }
    async freezeChannel({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.freezeChannelAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async unfreezeChannelAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.UNFREEZE), e),
      });
    }
    async unfreezeChannel({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.unfreezeChannelAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async hideChannelAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.HIDE), e),
      });
    }
    async hideChannel({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.hideChannelAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async showChannelAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.SHOW), e),
      });
    }
    async showChannel({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.showChannelAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async hideAllChannelsAsync() {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: l(d.HIDE_ALL),
      });
    }
    async hideAllChannels(e) {
      return this.wrapWithCallbackLoginRequired(
        this.hideAllChannelsAsync,
        null,
        e
      );
    }
    async joinChannelAsync({ channelId: e }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.JOIN), e),
      });
    }
    async joinChannel({ channelId: e }, t) {
      return this.wrapWithCallbackLoginRequired(
        this.joinChannelAsync,
        {
          channelId: e,
        },
        t
      );
    }
    async joinChannelByInvitationCodeAsync({
      channelId: e,
      invitationCode: t,
    }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.JOIN_INVITATION), e),
        jsonData: {
          invitationCode: t,
        },
      });
    }
    async joinChannelByInvitationCode({ channelId: e, invitationCode: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.joinChannelByInvitationCodeAsync,
        {
          channelId: e,
          invitationCode: t,
        },
        s
      );
    }
    async leaveChannelAsync({ channelId: e, deleteChannelIfEmpty: t }) {
      const s = {
        channelId: e,
        deleteChannelIfEmpty: t,
      };
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.LEAVE), e),
        jsonData: s,
      });
    }
    async leaveChannel({ channelId: e, deleteChannelIfEmpty: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.leaveChannelAsync,
        {
          channelId: e,
          deleteChannelIfEmpty: t,
        },
        s
      );
    }
    async getUnreadCountAsync() {
      return h.New(this.appId).get({
        sessionToken: this.getSessionToken(),
        url: l(d.UNREAD_COUNT),
      });
    }
    async getUnreadCount(e) {
      return this.wrapWithCallbackLoginRequired(
        this.getUnreadCountAsync,
        null,
        e
      );
    }
    async transferChannelOwnershipAsync({ channelId: e, userId: t }) {
      return h.New(this.appId).post({
        sessionToken: this.getSessionToken(),
        url: this.sprintf(l(d.TRANSFER_OWNERSHIP), e),
        jsonData: {
          userId: t,
        },
      });
    }
    async transferChannelOwnership({ channelId: e, userId: t }, s) {
      return this.wrapWithCallbackLoginRequired(
        this.transferChannelOwnershipAsync,
        {
          channelId: e,
          userId: t,
        },
        s
      );
    }
    getMessageUnreadCount({ channel: e, message: t }) {
      if (!this.userId) throw new Error("TalkPlus user not logged in");
      let s = 0;
      return (
        (e.members || []).forEach((i) => {
          this.userId !== i.id && i.lastReadAt < t.createdAt && s++;
        }),
        s
      );
    }
    sprintf(e, ...t) {
      let s = e;
      return (
        t.forEach((i) => {
          s = s.replace("%s", i);
        }),
        s
      );
    }
  }
  var te = ((n) => (
      (n.Private = "private"),
      (n.Public = "public"),
      (n.InvitationOnly = "invitationOnly"),
      (n.Broadcast = "broadcast"),
      (n.SuperPublic = "super_public"),
      (n.SuperPrivate = "super_private"),
      (n.SuperBroadcast = "super_broadcast"),
      n
    ))(te || {}),
    ne = ((n) => (
      (n.Text = "text"),
      (n.Hidden = "hidden"),
      (n.Admin = "admin"),
      (n.AdminHidden = "admin_hidden"),
      (n.Custom = "custom"),
      n
    ))(ne || {}),
    se = ((n) => (
      (n.ChannelAdded = "channelAdded"),
      (n.ChannelRemoved = "channelRemoved"),
      (n.ChannelChanged = "channelChanged"),
      (n.MemberAdded = "memberAdded"),
      (n.MemberLeft = "memberLeft"),
      (n.Message = "message"),
      (n.MessageDeleted = "messageDeleted"),
      n
    ))(se || {});
  const _e = 3e4;
  class Le extends W {
    constructor({ appId: e, disableEvents: t }) {
      super();
      w(this, "appId", "");
      w(this, "disableEvents", !1);
      w(this, "deviceId", "");
      w(this, "auth");
      w(this, "channel");
      w(this, "publicChannelsEventListener");
      w(this, "latestNotiTimestamp", 0);
      w(this, "lastExponentialBackOffInMS", 1);
      w(this, "wsConn");
      if (!e)
        throw new Error("TalkPlus Client requires appId for initialization");
      (this.appId = e),
        (this.deviceId = this.generateDeviceId()),
        (this.disableEvents = t || !1),
        (this.auth = new Se(e)),
        (this.channel = new Ie(e)),
        (this.publicChannelsEventListener = new L());
    }
    updateSession(e) {
      if (
        (this.clearSession(),
        super.updateSession(e),
        this.auth.updateSession(e),
        this.channel.updateSession(e),
        !this.disableEvents)
      ) {
        const t = {
          appId: this.appId,
          sessionId: this.sessionId,
          sessionToken: this.sessionToken,
        };
        this.startWebSocketConn(t);
      }
    }
    startWebSocketConn({ appId: e, sessionId: t, sessionToken: s }) {
      let i = ve(E.WEBSOCKET_NOTIFICATIONS);
      this.latestNotiTimestamp &&
        (i += `?timestamp=${this.latestNotiTimestamp}`),
        (this.wsConn = new WebSocket(i)),
        (this.wsConn.onopen = (a) => {
          const o = JSON.stringify({
            appId: e,
            sessionId: t,
            sessionToken: s,
          });
          this.wsConn.send(o);
        }),
        (this.wsConn.onclose = (a) => {
          this.lastExponentialBackOffInMS >= _e
            ? (this.lastExponentialBackOffInMS = 10)
            : this.lastExponentialBackOffInMS > 1e4
            ? (this.lastExponentialBackOffInMS += 1e3)
            : (this.lastExponentialBackOffInMS += 150);
          const o = {
            appId: this.appId,
            sessionId: this.sessionId,
            sessionToken: this.sessionToken,
          };
          this.wsConn.wsConnTimer = setTimeout(
            () => this.startWebSocketConn(o),
            this.lastExponentialBackOffInMS
          );
        }),
        (this.wsConn.onmessage = this.websocketNotificationHandler.bind(this));
    }
    websocketNotificationHandler(e) {
      let t;
      try {
        t = JSON.parse(e.data);
      } catch (i) {
        console.error(i);
        return;
      }
      const { data: s } = t;
      (this.latestNotiTimestamp = t.timestamp),
        s.isPublicChannelEvent
          ? this.publicChannelsEventListener.emit("event", s)
          : this.emit("event", s);
    }
    clearSession() {
      super.clearSession(),
        this.auth.clearSession(),
        this.channel.clearSession(),
        this.wsConn &&
          (clearInterval(this.wsConn.wsConnTimer), this.wsConn.close());
    }
    getNotification(e) {
      let t = e.talkplus;
      return (
        typeof t == "string" && (t = JSON.parse(t)),
        this.auth.getNotification(t.notificationLink)
      );
    }
    loginWithToken(e, t) {
      return (
        e.file && (e.profileImageUrl = void 0),
        this.auth.loginWithToken(this.deviceId, e, [this], t)
      );
    }
    loginAnonymous(e, t) {
      return (
        e.file && (e.profileImageUrl = void 0),
        this.auth.loginAnonymous(this.deviceId, e, [this], t)
      );
    }
    updateUser(e, t) {
      return e.file && (e.profileImageUrl = void 0), this.auth.updateUser(e, t);
    }
    deleteUser(e) {
      const t = this.auth.deleteUser(e);
      return this.clearSession(), t;
    }
    registerFcmToken(e, t) {
      return this.auth.registerFcmToken(e, t);
    }
    enablePushNotification(e) {
      return this.auth.enablePushNotification(e);
    }
    disablePushNotification(e) {
      return this.auth.disablePushNotification(e);
    }
    logout(e) {
      const t = this.auth.logout(e);
      return this.clearSession(), t;
    }
    getBlockedUsers(e, t) {
      return this.auth.getBlockedUsers(e, t);
    }
    blockUser(e, t) {
      return this.auth.blockUser(e, t);
    }
    unblockUser(e, t) {
      return this.auth.unblockUser(e, t);
    }
    getChannels(e, t) {
      return this.channel.getList(e, t);
    }
    searchChannels(e, t) {
      const { query: s, members: i } = e;
      if (!s && (!Array.isArray(i) || !i.length))
        throw new Error(
          "Searching channels requires either a non-empty query or a list of member IDs to match"
        );
      return (e.filter = R.Name), this.channel.getList(e, t);
    }
    getHiddenChannels(e, t) {
      return (e.type = I.Hidden), this.channel.getList(e, t);
    }
    getPublicChannels(e, t) {
      return (e.type = I.Public), this.channel.getList(e, t);
    }
    createChannel(e, t) {
      return this.channel.create(e, t);
    }
    getChannel(e, t) {
      return this.channel.get(e, t);
    }
    updateChannel(e, t) {
      return this.channel.update(e, t);
    }
    deleteChannel(e, t) {
      return this.channel.delete(e, t);
    }
    getChannelMembers(e, t) {
      return this.channel.getChannelMembers(e, t);
    }
    getChannelMember(e, t) {
      return this.channel.getChannelMember(e, t);
    }
    addChannelMembers(e, t) {
      return this.channel.addChannelMembers(e, t);
    }
    removeChannelMembers(e, t) {
      return this.channel.removeChannelMembers(e, t);
    }
    getBannedUsersFromChannel(e, t) {
      return this.channel.getBannedUsersFromChannel(e, t);
    }
    getBannedChannelUsers(e, t) {
      return this.channel.getBannedUsersFromChannel(e, t);
    }
    banUsersFromChannel(e, t) {
      return this.channel.banUsersFromChannel(e, t);
    }
    banChannelMembers(e, t) {
      return this.channel.banUsersFromChannel(e, t);
    }
    unbanUsersFromChannel(e, t) {
      return this.channel.unbanUsersFromChannel(e, t);
    }
    unbanChannelMembers(e, t) {
      return this.channel.unbanUsersFromChannel(e, t);
    }
    getMutedChannelMembers(e, t) {
      return this.channel.getMutedChannelMembers(e, t);
    }
    muteChannelMembers(e, t) {
      return this.channel.muteChannelMembers(e, t);
    }
    unmuteChannelMembers(e, t) {
      return this.channel.unmuteChannelMembers(e, t);
    }
    enableChannelPushNotification(e, t) {
      return this.channel.enablePushNoti(e, t);
    }
    disableChannelPushNotification(e, t) {
      return this.channel.disablePushNoti(e, t);
    }
    getChannelPushNotificationSettings(e, t) {
      return this.channel.getChannelPushNotificationSettings(e, t);
    }
    updateChannelPushNotificationSettings(e, t) {
      return this.channel.updateChannelPushNotificationSettings(e, t);
    }
    markChannelAsRead(e, t) {
      return this.channel.markChannelAsRead(e, t);
    }
    markAsRead(e, t) {
      return this.channel.markChannelAsRead(e, t);
    }
    markAllChannelsAsRead(e) {
      return this.channel.markAllChannelsAsRead(e);
    }
    markAsReadAllChannel(e) {
      return this.channel.markAllChannelsAsRead(e);
    }
    getMessages(e, t) {
      return this.channel.getMessages(e, t);
    }
    getFileMessages(e, t) {
      return this.channel.getFileMessages(e, t);
    }
    sendMessage(e, t) {
      return this.channel.sendMessage(e, t);
    }
    deleteMessage(e, t) {
      return this.channel.deleteMessage(e, t);
    }
    getMessageReactions(e, t) {
      return this.channel.getMessageReactions(e, t);
    }
    addMessageReaction(e, t) {
      return this.channel.addMessageReaction(e, t);
    }
    removeMessageReaction(e, t) {
      return this.channel.removeMessageReaction(e, t);
    }
    updateChannelPrivateTag(e, t) {
      return this.channel.updateChannelPrivateTag(e, t);
    }
    updateChannelPrivateData(e, t) {
      return this.channel.updateChannelPrivateData(e, t);
    }
    updateChannelMemberInfo(e, t) {
      return this.channel.updateChannelMemberInfo(e, t);
    }
    freezeChannel(e, t) {
      return this.channel.freezeChannel(e, t);
    }
    unfreezeChannel(e, t) {
      return this.channel.unfreezeChannel(e, t);
    }
    hideChannel(e, t) {
      return this.channel.hideChannel(e, t);
    }
    showChannel(e, t) {
      return this.channel.showChannel(e, t);
    }
    hideAllChannels(e) {
      return this.channel.hideAllChannels(e);
    }
    joinChannel(e, t) {
      return this.channel.joinChannel(e, t);
    }
    joinChannelByInvitationCode(e, t) {
      return this.channel.joinChannelByInvitationCode(e, t);
    }
    leaveChannel(e, t) {
      return this.channel.leaveChannel(e, t);
    }
    getUnreadCount(e) {
      return this.channel.getUnreadCount(e);
    }
    transferChannelOwnership(e, t) {
      return this.channel.transferChannelOwnership(e, t);
    }
    getMessageUnreadCount(e) {
      return this.channel.getMessageUnreadCount(e);
    }
  }
  (A.ChannelQueryFilterEnum = R),
    (A.ChannelQueryTypeEnum = I),
    (A.ChannelTypeEnum = te),
    (A.Client = Le),
    (A.EventTypeEnum = se),
    (A.MessageTypeEnum = ne),
    Object.defineProperty(A, Symbol.toStringTag, {
      value: "Module",
    });
});
