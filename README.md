iOS Parallax effect on images of UITableViewCell
================================================

The goal of this project is to create a parallax effect on a `UIImageView` on a `UITAbleViewCell` when the table scrolls.

This code has been created originally to provide a parallax effect on [meets](http://www.meetsapp.com/ "meets")'s discover tab.

![image](<https://github.com/jberlana/JBParallaxCell/raw/master/image.png>)

[Download the app](https://itunes.apple.com/us/app/meets-tienes-un-plan/id595441007 "meets") and test it for free! Feedback is welcome!

### Documentation

On your `UITableViewCell`

1. Put the `parallaxImageView` inside a `UIView` with `clipsToBounds = YES;` with some offest.
2. Add this function to calculate the image offset when the `UITableView` scrolls.

``` objc
- (void)cellOnTableView:(UITableView *)tableView didScrollOnView:(UIView *)view
{
    CGRect rectInSuperview = [tableView convertRect:self.frame toView:view];
    
    float distanceFromCenter = CGRectGetHeight(view.frame)/2 - CGRectGetMinY(rectInSuperview);
    float difference = CGRectGetHeight(self.parallaxImage.frame) - CGRectGetHeight(self.frame);
    float move = (distanceFromCenter / CGRectGetHeight(view.frame)) * difference;
    
    CGRect imageRect = self.parallaxImage.frame;
    imageRect.origin.y = -(difference/2)+move;
    self.parallaxImage.frame = imageRect;
}
```

On your `UITableViewDelegate` add this function.

``` objc
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    // Get visible cells on table view.
    NSArray *visibleCells = [self.tableView visibleCells];

    for (JBParallaxCell *cell in visibleCells) {
        [cell cellOnTableView:self.tableView didScrollOnView:self.view];
    }
}
```

And that is all, you can use the demo project to see how everithig works together.

--
###[meets](http://www.meetsapp.com/ "meets"), create and discover plans with your friends.###