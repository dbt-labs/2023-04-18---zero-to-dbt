# Welcome to zero to dbt from dbt Labs!
The purpose of this project is to demonstrate common patterns and use cases for dbt!!

We're going to get hands on, do some rapid learning, and get you soaring on your dbt journey!

Quick Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and best practices
- Find [dbt events](https://events.getdbt.com) near you

Would you rather just get started with dbt Cloud and skip the lab? [Just say hello and we'll take it from there.](https://getdbt.com/contact)


## Prework!

Before we get started on this journey, you will be asked to setup your dbt account. Don't worry, thanks to hard work from many wonderful people you are able to do this in 10 painless minutes.

In this prework section, we will create a Snowflake account (if you don’t already have one) and create a dbt Cloud account directly from Snowflake.

If you already have a Snowflake account, please skip the Snowflake account creation steps and go straight to creating a dbt Cloud account using partner connect. 

**NOTE** if you've already set up a Snowflake Partner Connect dbt Cloud account, you might have some errors trying this - in that case, go ahead and create a new Snowflake trial below and use that for this training.


### To create a Snowflake account:

1. Go to the [Snowflake website](https://signup.snowflake.com) and click "Free Trial" in the top-right corner.
2. Fill out the required information and click "Create Account".
3. Follow the instructions in your email to activate your account.
4. Once your account is activated, log in to your Snowflake account.

### To create a dbt Cloud account using Partner Connect:

1. Log in to Snowflake and make sure you’re using the `ACCOUNTADMIN` role.
2. In the Snowflake UI, click the "Partner Connect" button in the top-right corner.
3. Select "dbt Cloud".
4. Follow the prompts to create your dbt Cloud account.
5. You should receive an email from dbt Cloud confirming your account creation. You may now log in to dbt Cloud and see your fresh project!

## Section 1 - dbt Cloud Tour!
During this part of the lab, we'll jump around the UI a bit to get comfortable with where everything is and how dbt works.

After our session, we'll send recordings to everyone so you can return to this at your own pace 🎆

## Section 2 - zero to dbt!
Now that we have a vibe for where everything is, let's get down to business 💪

**TASK** - please do this one little thing:
- in your project, create a file called `packages.yml`. Place this file in the same folder as your `dbt_project.yml`, aka - in the root of the project.
- if you're not able to add or edit files, make sure you're not on the `main` branch of your project - check the big green button in the editor at the top left under `Version Control`. If it prompts you to create a branch, go ahead and do that now and try again.
- Paste in the following yaml and then save the file. Don't forget to save!!

```yaml
packages:
  - git: https://github.com/dbt-labs/2023-04-18---zero-to-dbt.git
```
- When you save `packages.yml` (do NOT forget to save this file hahaha), you'll see an error in the editor. That is NORMAL - all part of the process 🤘
- An alert should pop up asking you to run `dbt deps`. Please click it. Deps = dependencies. It'll install the base project for today's session.
- If you don't see a form pop up, don't panic. In the dbt command line at the bottom of the IDE, go ahead and run `dbt deps`.
- If you have any issues, we'll help you - just let us know in the chat.

From here, it's smooth sailing ⛵ - we'll work through everything together LIVE.

And just like before, we'll send recordings for this portion

## Section 3 - free play!
Let's do something fun with the new tools you have. Take a look at the dbt Docs we just built and see if you can find something interesting to build.

Here are the ground rules:
- build for your curiosity - not for your job
- start small. Preview data, ask a question, get an answer, ask a new question, repeat 🔄
- Starving for inspiration? Check out kaggle.com for CSV data sets - download, drop in your `seeds` directory, and run `dbt seed` to get started

We'll spend some time letting folks work and doing open Q&A. 