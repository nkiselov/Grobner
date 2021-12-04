//
//  vector.c
//  Grobner
//
//  Created by Nikita on 03.12.2021.
//  Copyright © 2021 Cocos. All rights reserved.
//

#include "vector.h"
#include <immintrin.h>

void sum_array_double(const double* a, const double* b, double* c, const int n)
{
    int i;
    for (i = 0; i < n; i += 4)
    {
        __m256d ad = _mm256_load_pd(&a[i]);
        __m256d bd = _mm256_load_pd(&b[i]);
        __m256d ans = _mm256_add_pd(ad,bd);
        _mm256_store_pd(&c[i],ans);
    }
}

void sum_array_int(const int16_t* a, const int16_t* b, int16_t* c, const int n)
{
    int i;
    for (i = 0; i < n; i += 8)
    {
        printf("%p", (void*)&a[i]);
        printf("\n");
        __m128i ad = _mm_loadu_si128(&a[i]);
        __m128i bd = _mm_loadu_si128(&b[i]);
        __m128i ans = _mm_add_epi16(ad,bd);
        _mm_storeu_si128(&c[i],ans);
    }
}
