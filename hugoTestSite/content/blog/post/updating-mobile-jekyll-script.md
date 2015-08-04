+++
date = "2014-09-11T01:14:37-05:00"
draft = false
title = "UPDATING MOBILE JEKYLL SCRIPT"
+++

This is some quick followup to a previous post ['MOBILE JEKYLL POSTING'](/blog/post/mobile-jekyll-posting/). I just wanted to go into a little more detail and show some changes I made to [Malphas Wats'](http://github.com/MalphasWats) script to [Post to GitHub Pages from Editorial](https://gist.github.com/MalphasWats/7977513).
<br>
<br>
A quick recap:
<br>
<br>
I wanted the ability to create and post to my blog from my iOS devices. After searching around and reading [Steven Combs'](http://github.com/stevencombs) post ['Post to a Jekyll blog from an iPad'](http://www.stevencombs.com/web/2014/07/01/post-to-a-jekyll-blog-from-an-ipad.html) and finding Malphas Wats' script, I realized had everything I needed on my devices already (Editorial + python script).
<br>
<br>
### The script:

So first things first, I had to doctor Wats' script, to [Post to GitHub Pages from Editorial](https://gist.github.com/MalphasWats/7977513)[^1], to fix a few things I did not like.[^2]
<br>
<br>
First I took out lines 16 - 35 because I'm only posting to one repository/blog and didn't want to key in my github username, API token, and repository each time the script ran.
<br>
<br>
```python
16:   #keychain.delete_password('GitHub', 'username')    # Uncomment these lines
17:   #keychain.delete_password('GitHub', 'token')       # to change the details
18:   #keychain.delete_password('GitHub', 'repository')  # stored in the keychain
19:
20:   # Get Username, API Token and Repository
21:   username = keychain.get_password('GitHub', 'username')
22:   if not username:
24:   	username = console.input_alert("Username", "Enter your GitHub Username", '', "Save")
25:   	keychain.set_password('GitHub', 'username', username)
26:
27:   tokn = keychain.get_password('GitHub', 'token')
28:   if not tokn:
29:   	tokn = console.password_alert("API Token", "Enter your GitHub API Token", '', "Save")
30:   	keychain.set_password('GitHub', 'token', tokn)
31:
32:   repo = keychain.get_password('GitHub', 'repository')
33:   if not repo:
34:   	repo = console.input_alert("Repository", "Enter your GitHub Repository name", '', "Save")
35:   	keychain.set_password('GitHub', 'repository', repo)
```
<br>
_I replaced this code with the following, to set the variables for my github credentials:_
<br>
```python
15:   username = 'your github username'
16:   tokn = 'your github API token'
17:   repository = 'your github repository where your site is stored'
```
The other change I made was on line 42[^3] which set the default file type, being pushed to github, from .markdown to .md.[^4]
<br>
```python
42:   post_filename = '_posts/%s-%s.markdown' % (date, safe_title)
```
<br>
_Changed .markdown to .md_
<br>
```python
42:   post_filename = '_posts/%s-%s.md' % (date, safe_title)
```
<br>

### Editorial Setup

For those of you who have used Editorial's workflows this is pretty straight forward what you'd do with the script but for those who haven't just follow along.
<br>
<br>
I suggest creating a post to test with before starting. Then you will click the wrench in the two right conner to enter the workflow panel. Once in the workflow panel you will want to create a new workflow by clicking on the '+' in the top left conner.
<br>
<br>
<img src="/images/2014-09-11-editorial-01.png" style="width:240px;height:426px;margin:40px;"><img src="/images/2014-09-11-editorial-02.png" style="width:240px;height:426px;margin:40px;">
<br>
<br>
At this point you will be in a blank workflow. You will want to add to add action to your workflow by clicking on the '+' in the top left corner. Scroll down to add the 'Run Python Script' action.
<br>
<br>
<img src="/images/2014-09-11-editorial-03.png" style="width:240px;height:426px;margin:40px;"><img src="/images/2014-09-11-editorial-04.png" style="width:240px;height:426px;margin:40px;">
<br>
<br>
Once the python action has been added you will need to add your script in the editor window. Once added you can test your changes to make sure the settings are match your needs. You will get a dialog box with a status.
<br>
<br>
<img src="/images/2014-09-11-editorial-05.png" style="width:240px;height:426px;margin:40px;"><img src="/images/2014-09-11-editorial-06.png" style="width:240px;height:426px;margin:40px;">
<br>
<br>
At this point your set.
<br>
<br>

<!-- footnotes -->
[^1]:I have forked Wats’ gist and made the changes which can be found at [Link](http://gist.github.com/hicksca/be56fc6cbff13e559e7c)
[^2]:I would post the entire script but it doesn't visually look good in the post due to the length.
[^3]:Remeber that I have removed lines of code from the script if your looking at the original it will be at line 58.
[^4]:This does not have to be changed and will work just fine but for continuity purposes I made the change. I prefer the .md file type so all my other post are saved as .md files and I did not want to have two different file types living in this directory.
