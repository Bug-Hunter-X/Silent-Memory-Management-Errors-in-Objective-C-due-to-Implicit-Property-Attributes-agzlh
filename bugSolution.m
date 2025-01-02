The solution is to explicitly specify the correct attribute for the property. In the case above, we must decide if we need a strong or weak reference. Let's assume we need a strong reference to retain the object. 

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) AnotherClass *anotherObject; // Explicitly 'strong'
@end

@implementation MyClass
- (void)someMethod {
    self.anotherObject = [[AnotherClass alloc] init];
    // ... no retain cycle, explicit strong reference
}
@end
```

By explicitly declaring `anotherObject` as `strong`, we make the memory management semantics clear. This approach prevents silent errors stemming from implicit attribute assignments.