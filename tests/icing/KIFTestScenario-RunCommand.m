//
//  KIFTestScenario-RunCommand.m
//  WibbleQuest
//
//  Created by orta therox on 19/07/2011.
//  Copyright 2011 http://ortatherox.com. All rights reserved.
//

#import "KIFTestScenario-RunCommand.h"
#import "KIFTestStep.h"

@implementation KIFTestScenario (KIFTestScenario_RunCommand)

- (void)runCommand:(NSString *)command {
  [self addStep:[KIFTestStep stepToEnterText:command intoViewWithAccessibilityLabel:@"Text Input"]];
  [self addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"return"]];
}

- (id)boolTestWithDescription:(NSString*)description andBlock^(){; {
  return [self stepWithDescription:@"Always succeeds" executionBlock:^(KIFTestStep *step, NSError **error) {
    return KIFTestStepResultSuccess;
  }];
}

@end
