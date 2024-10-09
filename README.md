# Fall-Prediction
Machine learning scoring reveals increased frequency of falls proximal to death in Drosophila melanogaster

### About
Falls are a significant cause of human disability and death. Risk factors include normal aging, neurodegenerative disease, and sarcopenia. Drosophila melanogaster is a powerful model for study of normal aging and for modeling human neurodegenerative disease. Aging-associated defects in Drosophila climbing ability have been observed to be associated with falls, and immobility due to a fall is implicated as one cause of death in old flies. An automated method for quantifying Drosophila falls might facilitate the study of causative factors and possible interventions. Here, machine learning methods were developed to identify Drosophila falls in video recordings of 2D movement trajectories. The study employed existing video of aged flies as they approached death, and young flies subjected to lethal dehydration/starvation stress. Approximately 9,000 frames of video were manually annotated using open-source tools and used as the training set for You Only Look Once (YOLOv4) software. The software was tested on specific hours within a 22 hour video that was originally human-annotated for number of falls per hour and corresponding timestamps. The model predictions were evaluated against the manually-annotated ground truth, revealing a strong correlation between the predicted and actual falls. The frequency of falls per hour increased dramatically 3-4 hours prior to death caused by dehydration/starvation stress, whereas extended periods of increased falls were observed in aged flies prior to death. This automated method effectively quantifies falls in video data without observer bias, providing a robust tool for future studies aimed at understanding causative factors and testing potential interventions.

### About the software
The software we are using leverages the YOLOv4 model to detect and quantify falls in Drosophila melanogaster. Falls are a significant risk factor in aging and neurodegenerative diseases, and Drosophila is a powerful model for studying these conditions. The software automates the detection of falls in video data, reducing the need for manual counting. It accurately identifies the fly and records the number of falls, along with the exact timestamps of each fall. This automation minimizes observer bias and offers a robust, efficient tool for future studies aimed at understanding the causes of falls and exploring potential interventions.

### Pre-requisites to use the tool
* File Path: Ensure the file path follows the exact required order.
* Colab Pro Subscription: GPU access is essential for the tool's performance.
* Video Format: Video files must be in mp4 format.
* File Storage: Save the video files in a Google Drive folder under /fly_fall_test_videos.
* Download the model weights from the following link: [Model Weights](https://drive.google.com/file/d/1SuTQxeg9NIFcK5RXPZPldY5PwqdfQa8L/view?usp=sharing) and add them in yolov4/training
* Sample input video : [Sample Input video](https://drive.google.com/file/d/1cyBU1z1c88NWBG9kgipMs7-yMXGqeCyH/view?usp=sharing)
* Sample output video : [Sample Output Video](https://drive.google.com/file/d/12e1Ozz_h-OD9lLccmAQR7qGALfbniKjm/view?usp=sharing)
* Add the input video in yolov4/fly_fall_test_videos

### Steps to use the software 
1. Clone the GitHub Repository: Clone the repository and save it in your Google Drive.
2. Open in Google Colab: Open the main.ipynb file in Google Colab. Ensure you have a Colab Pro subscription for GPU access.
3. Run the Notebook: Execute the notebook cells to run the analysis and detect falls in the video data.


