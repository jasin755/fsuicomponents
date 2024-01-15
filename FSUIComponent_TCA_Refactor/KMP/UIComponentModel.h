//
//  UIComponentModel.h
//  FSUIComponent_TCA_Refactor
//
//  Created by Nikolaj Pogněrebko on 15.01.2024.
//

#import <Foundation/Foundation.h>



@interface UIComponentModel : NSObject
@property (nonatomic, assign) NSInteger uid;

-(instancetype)initWithUID:(NSInteger)uid;
@end

@interface ComponentType1Model : UIComponentModel
@end

@interface ComponentType2Model : UIComponentModel
@end


