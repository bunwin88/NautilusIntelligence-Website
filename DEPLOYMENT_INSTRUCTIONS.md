# GitHub Browser Upload Deployment

1. Empty the target repository if a clean replacement is desired.
2. Extract this ZIP locally.
3. In GitHub, choose **Add file → Upload files**.
4. Drag every extracted item into the upload box. Drag the contents, not the enclosing folder.
5. Commit directly to `main`.
6. Go to **Settings → Pages**.
7. Set **Source** to **Deploy from a branch**.
8. Set **Branch** to `main` and **Folder** to `/(root)`, then save.
9. Confirm the custom domain is `nautilusintelligence.ai` and keep **Enforce HTTPS** enabled.

No `.github` folder, workflow YAML, command line, Git client, or batch file is required for this package.
