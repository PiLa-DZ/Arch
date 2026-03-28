# Github CLI

---

## 1. Installation

The package is available directly in the official Extra repository.
Since you're on Arch, just run:

```bash
sudo pacman -S github-cli
```

---

## 2. First-Time Setup (Authentication)

Once installed,
you need to link it to your GitHub account.
Run this command and follow the interactive prompts:

```bash
gh auth login
```

- What account? GitHub.com

- Protocol? SSH (Since you likely already have SSH keys set up for Git).

- Authenticate? Choose "Login with a web browser."
  It will give you an 8-digit code to paste into a browser window.

---

## 3. How it fits your Backend Workflow

Since you're building a Node.js/Prisma app,
here is how you'll actually use it:

- Create a Repo:
  Instead of going to the website,
  just run this inside your project folder:

  ```bash
  gh repo create my-new-api --public --source=. --remote=origin
  ```

- Handle PRs:
  When your frontend friend sends a PR,
  you can check it out locally to test it on your Arch machine:

  ```bash
  gh pr checkout 12
  ```

- Check Status: See what's happening across your project at a glance:

  ```bash
  gh status
  ```

---

## 4. Pro Tip: Integration with Neovim

Since you use Neovim,
you can set gh as your default editor
for things like issue descriptions.
Add this to your .bashrc or .zshrc:

```bash
export GH_EDITOR=nvim
```

Now,
when you run gh issue create,
it will open a Neovim buffer for you
to write your description using all your custom keybindings.
