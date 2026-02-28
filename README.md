# Starky Ink

A Hugo-based website for publishing creative works including blog posts, articles, poetry, and short stories.

## Structure

- `blog/` - Long-form articles and essays
- `poetry/` - Poems and verse
- `stories/` - Short stories and fiction
- `about/` - About page and author info

## Running Locally

```bash
hugo server -D
```

## Adding Content

### New Blog Post
```bash
hugo new content blog/my-post.md
```

### New Poem
```bash
hugo new content poetry/my-poem.md
```

### New Story
```bash
hugo new content stories/my-story.md
```

## Building

```bash
hugo --minify
```

Output goes to `public/` directory.

## Deploying

Use the deployment script to ensure proper permissions:

```bash
./deploy.sh
```

Or manually with rsync + chmod:

```bash
hugo --buildDrafts --baseURL "https://starky.ink/"
rsync -avz public/ /var/www/html/starky.ink/
chmod -R a+r /var/www/html/starky.ink/
```

**Note:** The `chmod` step is required because Hugo builds files with user-only permissions by default.