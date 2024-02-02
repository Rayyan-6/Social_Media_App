
library awesome_project.globals;

bool isBlur=true;
bool isContentVisible = false;
bool showPosts = true;

String followText = '';

void toggleStatus(){
  // showPosts = (followText=='Following');
  (followText=='Following')? showPosts=true:showPosts=false;
}
