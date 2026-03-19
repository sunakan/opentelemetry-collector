commit 2e283f58b4b2be7a41c90d7830c718f02d135bba
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jan 2 21:27:58 2026 +0100

    Avoid using interfaces/oneof like style for optional fields (#14333)
    
    This changes how to handle optional primitive fields, instead of using a
    "oneof" like style, define a metadata for each message that for the
    moment only contains information if the optional fields are present of
    not.
    
    Alternative considered to use a pointer to the value instead of "any"
    that would reduce the size of the field from 16B to 8B but would keep an
    extra allocation.
    
    **Before:**
    ```
    BenchmarkMarshalAndUnmarshal/empty
    BenchmarkMarshalAndUnmarshal/empty-12           16115462                73.64 ns/op          224 B/op          1 allocs/op
    BenchmarkMarshalAndUnmarshal/all
    BenchmarkMarshalAndUnmarshal/all-12              1844172               641.0 ns/op           800 B/op         21 allocs/op
    ```
    
    **After:**
    ```
    BenchmarkMarshalAndUnmarshal/empty
    BenchmarkMarshalAndUnmarshal/empty-12           18948967                62.91 ns/op          208 B/op          1 allocs/op
    BenchmarkMarshalAndUnmarshal/all
    BenchmarkMarshalAndUnmarshal/all-12              1914825               624.3 ns/op           760 B/op         18 allocs/op
    ```
    
    **Bechmark code:**
    ```golang
    func BenchmarkMarshalAndUnmarshal(b *testing.B) {
            tests := map[string]*ExponentialHistogramDataPoint{
                    "empty": NewExponentialHistogramDataPoint(),
                    "all": GenTestExponentialHistogramDataPoint(),
            }
            for name, src := range tests {
                    b.Run(name, func(b *testing.B) {
                            buf := make([]byte, src.SizeProto())
                            b.ReportAllocs()
                            b.ResetTimer()
                            for b.Loop() {
                                    gotSize := src.MarshalProto(buf)
                                    if len(buf) != gotSize {
                                            b.Fatalf("size mismatch: %d vs %d", len(buf), gotSize)
                                    }
    
                                    dest := NewExponentialHistogramDataPoint()
                                    if err := dest.UnmarshalProto(buf); err != nil {
                                            b.Fatal(err)
                                    }
                            }
                    })
            }
    }
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
