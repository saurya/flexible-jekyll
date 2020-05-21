---
layout: post
title: Why it's hard to learn to code
date: 2020-06-06 08:00:20 +0800
description: It's the syntax, clearly!
img: tesselate.jpeg # Add image post (optional)
fig-caption: A view of some hyperbolas technically # Add figcaption (optional)
tags: [Programming, Learning, SQL]
---

I was partially inspired by [this tweet](https://twitter.com/hondanhon/status/1262082569845108742) to write about one of my favorite programming language stories (all of my programming language blogposts are inspired in equal parts by my dad and Pablo) - SQL.

People anticipated that almost everyone will need to access data from a database and do stuff with it. The big obstacle? The obscure syntax related to querying in all the major languages at the time - the actual look of it is not too important, the important part is how SQL ended up:

```SQL
SELECT * FROM Users WHERE User = 'Sonic'
```

Pretty easy to understand right? Unfortunately most SQL statements in the wild end up looking like this:
```SQL
SELECT column1
       ,column2
FROM table1
WHERE column3 IN
(
    SELECT TOP(1) column4
    FROM table2
    INNER JOIN table3
    ON table2.column1 = table3.column1
)
```

Once people realized that the syntax of DL/I and the precursors to SQL were just obscuring a larger problem, they began to study it. The underlying relationship between data in the real world is actually hard to understand and reason about. How should a furniture store organize all of its data on sofas - per branch or globally? What if you want to know how many black sofas were sold on the full moon of every month? Could you do that easily? Once we take that data and transform it into self-contained tables (say per-branch or per-month), breaking those containers to merge is actually quite hard. While there are still a lot of advances that can be made in making programming languages appear more friendly, there will come a time when the underlying physics of data movement in the machine has to be understood.

Let's say you want to pull off the Indiana Jones replace-the-idol-on-weight-sensitive [platform move](https://youtu.be/mC1ikwQ5Zgc) in real life - how many steps does it take? Just two, done really fast, right - bag on platform, idol in hand. Well, let's see what this looks like in code:

```JavaScript
hands = 'bag'
platform = 'idol'
hands = platform
platform = hands
```

This doesn't work - in code you end up with the idol existing in both variables - platform and hands. This is physically impossible, but copying is the default behavior in computers. We have to adjust our mental model. If we want to switch these things, we have to make sure one of the values doesn't get annihilated.

```JavaScript
hands = 'bag'
platform = 'idol'
temp = hands
hands = platform
platform = temp
```

The physics of programming world is substantially different from the real world - you can summon and discard containers at will, but you cannot simply take something very easily. Understanding this new universe and its rules of how objects move, communicate and live is complicated. This is the real hard bridge to cross to understand how to code. I have a hypothesis about why there's such a huge overlap between higher-level physics graduates (like my partner in EF) and software engineers - both involve understanding systems that describe universes disjoint from our embodied experience. Once you can learn one non-human system, you can roll that skill into learning about other non-human systems more easily.
