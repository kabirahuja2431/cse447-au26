---
layout: home
title: Natural Language Processing
nav_exclude: true
toc: true
seo:
  type: Course
  name: Natural Language Processing
---

# {{ site.tagline }}
{: .fs-7 .fw-350 }
MWF 3:30–4:20 PM, MGH 389
{: .fs-6 .fw-300 }

{% assign instructors = site.staffers | where: 'role', 'Instructor' %}
{% for staffer in instructors %}
{{ staffer }}
{% endfor %}

{% assign head_teaching_assistants = site.staffers | where: 'role', 'Head Teaching Assistant' %}
{% assign num_head_teaching_assistants = head_teaching_assistants | size %}
{% if num_head_teaching_assistants != 0 %}

{% for staffer in head_teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %}

{% assign teaching_assistants = site.staffers | where: 'role', 'Teaching Assistant' %}
{% assign num_teaching_assistants = teaching_assistants | size %}
{% if num_teaching_assistants != 0 %}

{% for staffer in teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %}

<!-- Office hours are available on Zoom by appointment. -->

## Summary

This course covers methods for designing systems that intelligently process natural language text data. Topics include language models, text categorization, syntactic and semantic analysis, and machine translation, with an emphasis on algorithms and data-driven methods. The course is hands-on and project-based, focusing on building and evaluating practical NLP systems.

<b>Prerequisites</b><br>
CSE 312 and CSE 332; recommended: MATH 208. CSE 446 is recommended before or concurrently.

## Calendar

Only the first two weeks are shown for now. Later weeks will be added as the quarter continues.

<table>
  <thead>
  <tr>
    <th>Week</th>
    <th>Lecture</th>
    <th>Date</th>
    <th>Topic</th>
    <th>Summary</th>
    <th>Readings</th>
    <th>Homework</th>
    <th>Notes</th>
  </tr>
  </thead>
  <tbody>
  {% for week in site.data.calendar %}
    {% for day in week.days %}
      <tr>
        {% if forloop.index == 1 %}
        <td rowspan="{{ week.days | size }}">{{ week.week }}</td>
        {% endif %}
        <td>{{ day.lecture }}</td>
        <td>{{ day.date }}</td>
        <td class="cal-content">
          {{ day.topics }}
          {% if day.slides %}
            <br><a href="{{ day.slides }}" class="cal-content-link">[slides]</a>
          {% endif %}
        </td>
        <td class="cal-content">{{ day.summary }}</td>
        <td class="cal-content">
          {% for reading in day.readings %}
            {% if reading.link %}<a href="{{ reading.link }}" class="cal-content-link">{% endif %}
              {{ reading.title }}{% if forloop.last == false %};{% endif %}
            {% if reading.link %}</a>{% endif %}
          {% endfor %}
        </td>
        <td class="cal-content">{{ day.homework }}</td>
        <td class="cal-content">{{ day.notes }}</td>
      </tr>
    {% endfor %}
  {% endfor %}
  </tbody>
</table>

## Resources

* Readings
  - [J&M III](https://web.stanford.edu/~jurafsky/slp3/): Speech and Language Processing (Dan Jurafsky and James H. Martin)
  - Additional readings will be released weekly.

## Note to Students

Take care of yourself! As a student, you may experience a range of challenges that can interfere with learning, such as strained relationships, increased anxiety, substance use, feeling down, difficulty concentrating and/or lack of motivation. All of us benefit from support during times of struggle. There are many helpful resources available on campus and an important part of having a healthy life is learning how to ask for help. Asking for support sooner rather than later is almost always helpful. UW services are available, and treatment does work. You can learn more about confidential mental health services available on campus [here](https://www.washington.edu/counseling/). Crisis services are available from the counseling center 24/7 by phone at +1 (866) 743-7732 ([more details here](https://www.washington.edu/counseling/services/crisis/)).
