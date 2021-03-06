# April Fools Chrome CSS

Want to have a nice quick prank to pull? These are some simple scripts to write a Custom.css file into the default Chrome user's stylesheets directory. These scripts have been tested on both Ubuntu and Mac OSX.

Original credit to [wesbos](https://github.com/wesbos/aprilFools.css) for the idea and CSS.

## Important Note

You are running a shell script from Github. This is a huge security risk. I am not responsible if you accidently your whole computer. I *strongly* encourage you to view the scripts before running them.

## How to execute
```
curl https://raw.github.com/kevinoconnor7/april-fools-chrome-css/master/<script name>.sh | sh
```

That's it! I know.. the URL is a bit long and tedious to remember. Here's a shorter URL for them:

```
curl -L http://april.oconnor.mp/<script name> | sh
```

## How to undo

Run one of the following:

```
curl https://raw.github.com/kevinoconnor7/april-fools-chrome-css/master/undo.sh | sh
```
```
curl -L http://april.oconnor.mp/undo | sh
```

### Still not undone?

Force undo by running one of the following:

```
curl https://raw.github.com/kevinoconnor7/april-fools-chrome-css/master/forceUndo.sh | sh
```
```
curl -L http://april.oconnor.mp/forceUndo | sh
```

**Note:** This will wipe out any custom stylesheet they might have in place for the default user.