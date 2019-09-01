/*****************************************************************************
 * Copyright (C) 2013 J05HYYY
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int max = -1;

unsigned long long *primes;
int numberOfPrimes;

int primeFunction(unsigned long long prime){
printf("%llu\n",prime);

primes = realloc(primes, (numberOfPrimes+1) * sizeof(unsigned long long));
primes[numberOfPrimes] = prime;
++numberOfPrimes;

	long workingNumber;
	for (workingNumber=2;;workingNumber+=2)
	{
		short found = -1;
		int primeIndex = 0;
		for (primeIndex = 0; primeIndex < numberOfPrimes; ++primeIndex)
		{
			if ((workingNumber + prime) % primes[primeIndex] == 0)
			{
				found = 1;
				break;
			}
		}
		if (found == -1)
		{
			unsigned long long newPrime = workingNumber + prime;
			if (newPrime > max) return 1;
			else
			{
				primeFunction(newPrime);
				break;
			}
		}
	}
return 1;
}

int main(int argc, char *argv[]){

if (argc < 2)
{
printf("Please enter the number you want to go up to.\n");
return -1;
}

max = atoi(argv[1]);

numberOfPrimes = 0;
primes = malloc(sizeof(int));
primeFunction(3);
free(primes);
return 1;
}
