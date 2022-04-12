# Fake News Classifier

## Context:
* In today's world which contains a lot of digital data it will be very beneficial to have some kind of an software that will help us in descriminating between Fake and Real News with some given constraints.


## Data:
* The dataset contains news instances with title and text along with its labels taken from various sources.

|Column Name| Description|
|----------|-------------|
|title| title of the News article|
|text|text of the News article|
|label|label assigned to the News article,"FAKE" or "REAL"|



## My work:
* My objective for this project was to train and compare the performance of various models on the basis of f1_score and time taken per prediction.
* I have demostrated a stepwise approach and have attempted the problem using various algorithms from Naive Bayes to state of the art transformers.
* Analysed and compared the model on the basis of f1_score and time taken per prediction.
* I demostrated how increasing the complexity of the model way lead to better performance but will hamper the time taken per prediction.
* Build an web app using streamlit which uses model trained using a feed forward neutral network.
* Tech Stack used : Python,numpy,pandas,sklearn,tensorflow,html,css,streamlit


## Web app working:
* The user has to enter the title and text of the news article and the application will predict whether the news article is Fake or Real after the user clicks the predict button.

* To use the web app bulit using streamlit check out [app.py.](https://share.streamlit.io/ashwinshetgaonkar/fake-news-classifier/main/app.py)



