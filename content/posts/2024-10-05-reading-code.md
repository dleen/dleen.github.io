+++
title = "Reading Code is a Skill"
date = 2024-10-05
draft = false
tags = ["engineering"]
+++

We spend years learning to write code. Courses, tutorials, practice problems. But reading code? You're mostly on your own.

This is backwards. Most engineers spend more time reading code than writing it. Understanding a codebase, reviewing PRs, debugging—it's all reading.

A few things that help me:

1. **Start with the tests.** They show intent. What is this code *supposed* to do?
2. **Follow the data.** Where does it come from? Where does it go? What transforms it?
3. **Read the types.** In typed languages, signatures tell you a lot before you read a single line of implementation.
4. **Use your debugger.** Step through execution. Watch values change. It's faster than staring at static code.

Like any skill, it improves with practice. Pick an open source project you use and read it. You'll learn something.
