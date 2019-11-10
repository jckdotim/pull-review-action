# Pull Review Action

GitHub Action for [Pull Review](https://github.com/imsky/pull-review)

# Screenshot

![image](https://user-images.githubusercontent.com/276766/68546416-436afd00-0419-11ea-9eef-226fe041e6fb.png)

# How to Use

## 1. Create `.pull-review` file.

```
version: 1

reviewers:
  jckdotim: {}
```

## 2. Add this step to your workflow

```
    - name: Pull Review
      uses: jckdotim/pull-review-action@v0.1.3
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
