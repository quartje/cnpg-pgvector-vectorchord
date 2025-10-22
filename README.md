# Custom PostgreSQL image for Immich migration (pgvecto.rs → VectorChord)

This repository contains a custom Docker image based on [cloudnative-vectorchord](https://github.com/tensorchord/cloudnative-vectorchord) with the `pgvecto.rs` extension pre-installed. It is designed to support a **safe and smooth migration** from `pgvecto.rs` to `VectorChord` for projects such as [Immich](https://github.com/immich-app/immich) using [cloudnative-pg](https://cloudnative-pg.io/) to manage their PostgreSQL clusters.

---

## 🚀 Why this image?

Starting from Immich `v1.133.0`, the `pgvecto.rs` extension is deprecated in favour of [VectorChord](https://github.com/tensorchord/vectorchord), offering better performance and more stability.

However, **in order to migrate existing databases**, both extensions (`pgvecto.rs` and `VectorChord`) must be available **at the same time** in the PostgreSQL image. This image makes that possible.

---

## 🧪 What's inside

- 🐘 Base: `ghcr.io/tensorchord/cloudnative-vectorchord:16-0.3.0`
- ➕ Adds `pgvecto.rs v0.3.0` (as a `.deb` package)
- ✅ Compatible with `cloudnative-pg`
- ✅ Tested with Immich v1.133.0+

---

## 🛠️ Usage

```yaml
spec:
  image:
    name: ghcr.io/corentingiraud/cnpg-pgvector-vectorchord
    tag: 1.0.2
```

---

## ⚠️ Notes

* Only use this image **during the migration phase**.
* Once your migration is complete and Immich works correctly, you can switch to a leaner image with just `VectorChord`, like:

  ```
  ghcr.io/tensorchord/cloudnative-vectorchord:16-0.3.0
  ```

---

## 🧊 Credits

* [pgvecto.rs](https://github.com/tensorchord/pgvecto.rs)
* [VectorChord](https://github.com/tensorchord/vectorchord)
* [Immich](https://github.com/immich-app/immich)
* [cloudnative-pg](https://cloudnative-pg.io/)

---

## 📬 Feedback

Feel free to open an issue or PR if you have suggestions, improvements, or questions 🙌
